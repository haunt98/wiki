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

Go rune is code point in `int32`.

The following creates a `transform.Transformer` that decomposes text into its smallest parts, removes all accents, and then recomposes the text into NFC:

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
