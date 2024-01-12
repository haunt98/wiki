# 01_deep_dive

## Unicode

Unicode is a table which assign **character** (a, b, c, emoji, ...) to number
aka **code point**.

Private Use is up to developer to define, Unicode does not define that global.
For example icon fonts.

UTF-8 is **variable-length** encoding. Each character can be encoded to 1, 2, 3
or 4 bytes.

- English is encoded using 1 bytes.
- Chinese, Japanese, Emoji need 3 or 4 bytes.

ASCII is compatible with UTF-8 because ASCII using code points 0..127 which is
exact 1 byte and represents same character in UTF-8. So pure ASCII text is also
valid UTF-8 text.

U don't want to work with code points, u need to work with graphene. A graphene
is the smallest distinct unit of writing in specific context.

- `ả`, `ẻ` is a graphene in Vietnamese text.

The problem is 1 graphene can be encoded by many code points (No limit). So many
programming languages show that length of 1 graphene can be more than 1. But
human only count as 1.

Sometimes, same character can be encoded multiple way, 1 code point or combined
2 code points. So there need some **normalization** to guarantee that a
character is always represented by **same** code points.

|                           | Composing | Decomposing |
| ------------------------- | --------- | ----------- |
| Canonical equivalence     | NFC       | NFD         |
| Compatibility equivalence | NFKC      | NFKD        |

Go rune is code point in `int32` because Unicode code point can be up to 4 bytes
aka (2^8)^4 = 2^32.

The following creates a `transform.Transformer` that decomposes text into its
smallest parts, removes all accents, and then recomposes the text into NFC:

```go
import (
    "unicode"

    "golang.org/x/text/transform"
    "golang.org/x/text/unicode/norm"
)

isMn := func(r rune) bool {
    return unicode.Is(unicode.Mn, r) // Mn: nonspacing marks
}
t := transform.Chain(norm.NFD, transform.RemoveFunc(isMn), norm.NFC)
```

### References

- [The Absolute Minimum Every Software Developer Must Know About Unicode in 2023 (Still No Excuses!)](https://tonsky.me/blog/unicode/)
- [It’s Not Wrong that `"🤦🏼‍♂️".length == 7`](https://hsivonen.fi/string-length/)
- [Text normalization in Go](https://go.dev/blog/normalization)
- [Strings, bytes, runes and characters in Go](https://go.dev/blog/strings)

## Rate limit

### Token bucket / Leaky bucket

Each user has bucket with default token count. Each time user arrives, bucket
**decrease** token count. After some time, bucket get **refill** with default
token count.

Implement:

- Save timestamp user arrives and current token count.
- If user arrives, check if user bucket need to refill base on timestamp, then
  decrease token count.
- If token count reach 0 then user hit/exceed rate limit.

Consider:

- Read (current token count) then write (refill/decrease token count) is
  problematic in distributed system.
  - User A hit 2 requests at the same time, then system read current user token
    count at the same time (== 1) then 2 requests shall pass but it should not.
  - Need to use **distributed lock**.

### Fixed window counters

Divide time to duration (each minute, each 30s, ...). In each duration, user has
default limit token count, initially 0. Each time user arrives, **increase**
user duration token count.

Implement:

- If user arrives, round arrive timestamp to timestamp of start duration, then
  use that at a key.
  - Check if key is exist or not, if not then user token count is 0, otherwise
    user token count is key value.
  - Increase token count.
- If token count reach default limit then user hit rate limit.
- The key is only valid in duration so we need to delete old key. Because 1 user
  arrives in different time can create many different keys.

Consider:

- Because Redis allow increase and return value in atomic operation so we don't
  need distributed lock.
- Use Redis expired to auto delete old key.
- Problem is user can bypass up to **2x** default limit, because we only count
  in 1 duration, if user fires all requests near the end of duration, then fires
  another after the start of new duration then we let it through.

### Sliding window log

Track all timestamp of user requests in a sorted sets.

Implement:

### References

- [An alternative approach to rate limiting](https://www.figma.com/blog/an-alternative-approach-to-rate-limiting/)
- [Designing and implementing a sliding window based rate limiter](https://arpitbhayani.me/blogs/sliding-window-ratelimiter)
