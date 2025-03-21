# 00_tiny

## Software Engineering

[Write code that is easy to delete, not easy to extend.](https://web.archive.org/web/20250314140146/https://programmingisterrible.com/post/139222674273/write-code-that-is-easy-to-delete-not-easy-to)

Create a mess to make sure it work, then keep cleaning up later.

> To write code that’s easy to delete: repeat yourself to avoid creating
> dependencies, but don’t repeat yourself to manage them. Layer your code too:
> build simple-to-use APIs out of simpler-to-implement but clumsy-to-use parts.
> Split your code: isolate the hard-to-write and the likely-to-change parts from
> the rest of the code, and each other. Don’t hard code every choice, and maybe
> allow changing a few at runtime. Don’t try to do all of these things at the
> same time, and maybe don’t write so much code in the first place.
>
> You’ve copy-pasted, you’ve refactored, you’ve layered, you’ve composed, but
> the code still has to do something at the end of the day. Sometimes it’s best
> just to give up and write a substantial amount of trashy code to hold the rest
> together.
>
> Business logic is code characterised by a never ending series of edge cases
> and quick and dirty hacks. This is fine. I am ok with this. Other styles like
> ‘game code’, or ‘founder code’ are the same thing: cutting corners to save a
> considerable amount of time.
>
> The reason? Sometimes it’s easier to delete one big mistake than try to delete
> 18 smaller interleaved mistakes. A lot of programming is exploratory, and it’s
> quicker to get it wrong a few times and iterate than think to get it right
> first time.
>
> Instead of breaking code into parts with common functionality, we break code
> apart by what it does not share with the rest. We isolate the most frustrating
> parts to write, maintain, or delete away from each other.
>
> We are not building modules around being able to re-use them, but being able
> to change them.

[Imaginary Problems Are the Root of Bad Software](https://cerebralab.com/Imaginary_Problems_Are_the_Root_of_Bad_Software)

> It’s a vicious cycle of solving imaginary problems, from the CEO who doesn’t
> realize that stealing another 30 million won’t make his dad love him to the
> user-experience intern who doesn’t realize that redesigning the “submit”
> button using Angular-Material-Bootstrap 19.13.5 won’t make the fact that they
> store passwords in plain text (and use them as part of the auth cookie) go
> away.
>
> But everyone needs to keep solving the imaginary problems, because if they
> stop creating and solving these problems, if they start focusing on the _real_
> problems, they might realize the whole system is broken. They might realize
> Debra has been sitting in that corner, staring at uptime graphs of the
> internal server farm for 10 years, despite the fact that the company moved to
> AWS five years ago. They might realize 99 percent of their job is to
> perpetuate the existence of someone else’s job. And that’s a hard realization
> to digest—impossible for most, I dare say. So, instead, most find a way of
> coping.

[What it means to design a platform](https://matthewstrom.com/writing/platform-design)

> Incentives Designing applications requires understanding the balance between
> motivation and friction. It’s almost mathematical: if a user’s motivation is
> greater than the friction they experience, the user will complete a task. If
> users aren’t completing a task, you can increase the motivation through
> marketing and guidance, or decrease the friction through usability
> improvements or automation.
>
> Second-order thinking Platform design requires second-order thinking, where
> first-order effects are causes, too. A great example of this is attributed to
> Warren Buffett: imagine a crowd watching a parade. A few people stand on their
> tiptoes — that’s a first-order cause. Now, they can see better — the
> first-order effect. What happens next? All the people behind them have to
> stand on their tiptoes, too — that’s the second-order effect. In the end,
> everyone is worse off, and nobody can see any better.2

### References

- [Systems design explains the world: volume 1](https://apenwarr.ca/log/20201227)
- [Systems design 2: What we hope we know](https://apenwarr.ca/log/20230415)
- [Tech debt metaphor maximalism](https://apenwarr.ca/log/20230605)
- [Smart Guy Productivity Pitfalls](https://waivek.github.io/website/tooltip.html)
- [Rewrite, refactor, or reinvent?](https://herbcaudill.com/words/20190219-rewrite-refactor-reinvent)
- [Stop saying “technical debt”](https://stackoverflow.blog/2023/02/27/stop-saying-technical-debt/)
- [Cognitive Load is what matters](https://github.com/zakirullin/cognitive-load)
- [Paying down tech debt: further learnings](https://blog.pragmaticengineer.com/paying-down-tech-debt-further-learnings/)
- [How to make Product give a shit about your architecture proposal](https://gieseanw.wordpress.com/2024/10/09/how-to-make-product-give-a-shit-about-your-architecture-proposal/)
- [Egoless Engineering](https://egoless.engineering/)
- [Slime Mold](https://komoroske.com/slime-mold/)
- [Every Line Is a Potential Bug](https://www.teamten.com/lawrence/writings/every_line_is_a_potential_bug.html)

- [A List of Post-mortems!](https://github.com/danluu/post-mortems)
- [Story: Redis and its creator antirez](https://blog.brachiosoft.com/en/posts/redis/)
- [A Git story: Not so fun this time](https://blog.brachiosoft.com/en/posts/git/)
- [Lessons learned from 15 years of SumatraPDF, an open source Windows app](https://blog.kowalczyk.info/article/2f72237a4230410a888acbfce3dc0864/lessons-learned-from-15-years-of-sumatrapdf-an-open-source-windows-app.html)
- [What it was like working for GitLab](https://yorickpeterse.com/articles/what-it-was-like-working-for-gitlab/)
- [We Have to Start Over: From Atom to Zed](https://zed.dev/blog/we-have-to-start-over)
- [From 1s to 4ms](https://registerspill.thorstenball.com/p/from-1s-to-4ms)
- [7 Things I've learned building a modern TUI Framework](https://www.textualize.io/blog/7-things-ive-learned-building-a-modern-tui-framework/)
- [Why I Quit Google to Work for Myself](https://mtlynch.io/why-i-quit-google/)
- [Everyone is wrong about that Slack flowchart](https://sophiebits.com/2024/10/30/everyone-is-wrong-about-that-slack-flowchart)
- [Learnings after 4 years working with +50 companies on data engineering projects](https://javisantana.com/2024/11/30/learnings-after-4-years-data-eng.html)

## Programming

[Cool URIs don't change](https://www.w3.org/Provider/Style/URI)

Design URI/URL path to livelong. Keep out:

- Author name (author can change name)
- Status (wip, draft, …)
- Filename extensions (.html, …)

Good example: `http://www.w3.org/1998/12/01/chairs`

[Stevey's Google Platforms Rant](https://gist.github.com/chitchcock/1281611)

> monitoring and QA are the same thing. You'd never think so until you try doing
> a big SOA. But when your service says "oh yes, I'm fine", it may well be the
> case that the only thing still functioning in the server is the little
> component that knows how to say "I'm fine, roger roger, over and out" in a
> cheery droid voice. In order to tell whether the service is actually
> responding, you have to make individual calls. The problem continues
> recursively until your monitoring is doing comprehensive semantics checking of
> your entire range of services and data, at which point it's indistinguishable
> from automated QA. So they're a continuum.
>
> if you have hundreds of services, and your code MUST communicate with other
> groups' code via these services, then you won't be able to find any of them
> without a service-discovery mechanism. And you can't have that without a
> service registration mechanism, which itself is another service. So Amazon has
> a universal service registry where you can find out reflectively
> (programmatically) about every service, what its APIs are, and also whether it
> is currently up, and where.

[Monitoring is a Pain](https://matduggan.com/were-all-doing-metrics-wrong/)

> The other problem is logs are such a stupid thing to have to store. 99.9999%
> of them are never useful, the ones that are look exactly like the rest of them
> and you end up sticking them in object storage forever at some point where no
> human being will ever interact with them until the end of time. The number of
> times I've written some variation on "take terabytes of logs nobody has ever
> looked at from A and move to B" scripts is too high.

[Advice for Operating a Public-Facing API](https://jcs.org/2023/07/12/api)

> Use prefixed tokens This took me years to stumble upon, but use a short prefix
> for each type of random ID you create. Instead of generating an API token of
> Mk7vuCg9eptiV8qid4mn, make it appMk7vuCg9eptiV8qid4mn. Instead of a user key
> of zo2iD3x3J9, use userzo2iD3x3J9. Pushover uses a for API tokens, u for user
> keys, g for group keys, s for subscribed user keys, etc. This makes it easier
> for users to keep multiple keys/tokens straight when they all look like
> gibberish and it makes it possible to automate helpful API error responses
> like "your token parameter has a user key instead of an API token".

- [When Taylor Swift crashed Ticketmaster: A lesson on scaling for spikes](https://web.archive.org/web/20230601145822/https://learningdaily.dev/when-taylor-swift-crashed-ticketmaster-a-lesson-on-scaling-for-spikes-9931e2c888e9)
- [Good Retry, Bad Retry: An Incident Story](https://web.archive.org/web/20250314184453/https://medium.com/yandex/good-retry-bad-retry-an-incident-story-648072d3cee6)

> This scenario is not new to the world of distributed computing and even has a
> name you may have heard of before: **“The Thundering Herd” problem**. Large
> distributed systems like Facebook have dealt with far more extreme thundering
> herds than the Taylor Swift fans. What happened to Ticketmaster is not an
> unsolved problem.

[Always use an enum for your status field](https://jmduke.com/posts/post/enums/)

> Shift is_active to something more generic: a status field, so we can expand it
> down the line for other parts of the state space.

[Enum of Arrays](https://tigerbeetle.com/blog/2024-12-19-enum-of-arrays/)

AoE

```zig
const Thing = union(enum) {
   spam: Spam,
   eggs: Eggs
}

// With a level of abstraction peeled:
const Thing = struct {
   tag: u8,
   payload: union {
       spam: Spam,
       eggs: Eggs,
   }
};

const AoE = []Thing;
```

EoA

```zig
const EoA = struct {
   tag: u8, // Sic!
   payload: union {
       spam: []Spam,
       eggs: []Eggs,
   }
}
```

### References

- [Distributed systems for fun and profit](https://book.mixu.net/distsys/single-page.html)
  - [Notes on Distributed Systems for Young Bloods](https://www.somethingsimilar.com/2013/01/14/notes-on-distributed-systems-for-young-bloods/)
- [Algorithms for Modern Hardware](https://en.algorithmica.org/hpc/)
- [TCP Fast Open: expediting web services](https://lwn.net/Articles/508865/)
  - [Multipath TCP](https://www.mptcp.dev/)

- [Using Apache Kafka to process 1 trillion inter-service messages](https://blog.cloudflare.com/using-apache-kafka-to-process-1-trillion-messages/)
- [A good day to trie-hard: saving compute 1% at a time](https://blog.cloudflare.com/pingora-saving-compute-1-percent-at-a-time/)
- [Borrow checking, RC, GC, and the Eleven (!) Other Memory Safety Approaches](https://verdagon.dev/grimoire/grimoire)
- [Dynamic Programming is not Black Magic](https://qsantos.fr/2024/01/04/dynamic-programming-is-not-black-magic/)
- [Examples of floating point problems](https://jvns.ca/blog/2023/01/13/examples-of-floating-point-problems/)
- [0.1 + 0.2](https://rtfeldman.com/0.1-plus-0.2)
- [why GNU grep is fast](https://lists.freebsd.org/pipermail/freebsd-current/2010-August/019310.html)
- [The Real Hash Was the Friends We Made along the Way](https://vaibhavsagar.com/blog/2024/02/14/minimal-perfect-hashing/)
- [Overflow in consistent hashing](https://rmarcus.info/blog/2018/09/14/consistent-hashing-overflow.html)
- [What is tail recursion?](https://stackoverflow.com/a/37010)
- [Performance tip: avoid unnecessary copies](https://lemire.me/blog/2024/06/22/performance-tip-avoid-unnecessary-copies/)
- [A Regular Expression Matcher](https://www.cs.princeton.edu/courses/archive/spr09/cos333/beautiful.html)
- [Untangling Lifetimes: The Arena Allocator](https://www.rfleury.com/p/untangling-lifetimes-the-arena-allocator)
- [Multi-Threading & Mutation](https://www.rfleury.com/p/multi-threading-and-mutation)
- [Sort, sweep, and prune: Collision detection algorithms](https://leanrada.com/notes/sweep-and-prune/)
- [Sort, sweep, and prune: Part 2](https://leanrada.com/notes/sweep-and-prune-2/)
- [The Design of Everyday APIs](https://www.roguelynn.com/talks/everyday-apis/)
- [Tips on Adding JSON Output to Your CLI App](https://blog.kellybrazil.com/2021/12/03/tips-on-adding-json-output-to-your-cli-app/)
- [ETag and HTTP caching](https://rednafi.com/misc/etag_and_http_caching/)
- [Why Full Text Search is Hard](https://transactional.blog/blog/2023-why-full-text-search-is-hard)
- [Optimizing Javascript for fun and for profit](https://romgrk.com/posts/optimizing-javascript)
- [CORS is Stupid](https://kevincox.ca/2024/08/24/cors/)
- [ATProto for distributed systems engineers](https://atproto.com/articles/atproto-for-distsys-engineers)
- [Use data that looks like data](https://registerspill.thorstenball.com/p/use-data-that-looks-like-data)
- [Greppability is an underrated code metric](https://morizbuesing.com/blog/greppability-code-metric/)
- [Confusing or misunderstood topics in systems programming: Part 0](https://web.archive.org/web/20250206164606/http://pthorpe92.dev/programming/systems/common-misunderstandings/)
- [Confusing or misunderstood topics in systems programming: Part 1](https://web.archive.org/web/20250221072059/http://pthorpe92.dev/programming/systems/threads-async-runtimes-part0/)
- [Why those particular integer multiplies?](https://fgiesen.wordpress.com/2024/10/26/why-those-particular-integer-multiplies/)
- [Peeking into VALORANT's Netcode](https://technology.riotgames.com/news/peeking-valorants-netcode)
- [Revisiting the Outbox Pattern](https://www.decodable.co/blog/revisiting-the-outbox-pattern)
- [Inside NGINX: How We Designed for Performance & Scale](https://blog.nginx.org/blog/inside-nginx-how-we-designed-for-performance-scale)
- [LMAX Disruptor](https://lmax-exchange.github.io/disruptor/)
  - [The LMAX Architecture](https://martinfowler.com/articles/lmax.html)
  - [LMAX - How to Do 100K TPS at Less than 1ms Latency](https://www.infoq.com/presentations/LMAX/)
- [Common Misconceptions about Compilers](https://sbaziotis.com/compilers/common-misconceptions-about-compilers.html)
- [Stripe V2](https://brandur.org/fragments/stripe-v2)
- [How to Secure Webhooks?](https://newsletter.scalablethread.com/p/how-to-secure-the-webhooks)
- [How Unix Spell Ran in 64kB RAM](https://blog.codingconfessions.com/p/how-unix-spell-ran-in-64kb-ram)
- [Bloom Filters and Beyond: An Illustrated Introduction and Implementation](https://blog.codingconfessions.com/p/bloom-filters-and-beyond)
- [Sharding & IDs at Instagram](https://instagram-engineering.com/sharding-ids-at-instagram-1cf5a71e5a5c)
  - https://news.ycombinator.com/item?id=3058327
- [Relaxed Radix Balanced Trees](https://peter.horne-khan.com/relaxed-radix-balanced-trees/)
- ["A calculator app? Anyone could make that."](https://chadnauseam.com/coding/random/calculator-app)
- [How I cut GTA Online loading times by 70%](https://nee.lv/2021/02/28/How-I-cut-GTA-Online-loading-times-by-70/)
- [Counting the digits of 64-bit integers](https://lemire.me/blog/2025/01/07/counting-the-digits-of-64-bit-integers/)

- [Falsehoods programmers believe about time zones](https://www.zainrizvi.io/blog/falsehoods-programmers-believe-about-time-zones/)
- [chrono-Compatible Low-Level Date Algorithms](https://howardhinnant.github.io/date_algorithms.html)
- [Storing UTC is not a silver bullet](https://codeblog.jonskeet.uk/2019/03/27/storing-utc-is-not-a-silver-bullet/)
- [Storing times for human events](https://simonwillison.net/2024/Nov/27/storing-times-for-human-events/)

- [Binary Search Tree with SIMD](https://clement-jean.github.io/simd_binary_search_tree/)
- [Does "vpmovzxbd" Scare You? Here's Why it Doesn't Have To](https://questdb.io/blog/does-vpmovzxbd-scare-you/#what-exactly-is-a-simd-instruction)
- [Understanding SIMD: Infinite Complexity of Trivial Problems](https://www.modular.com/blog/understanding-simd-infinite-complexity-of-trivial-problems)
- [Fast columnar JSON decoding with arrow-rs](https://www.arroyo.dev/blog/fast-arrow-json-decoding)

- [How Figma’s multiplayer technology works](https://www.figma.com/blog/how-figmas-multiplayer-technology-works/)
- [CRDT: Fractional Indexing](https://madebyevan.com/algos/crdt-fractional-indexing/)
- [CRDT: Tree-Based Indexing](https://madebyevan.com/algos/crdt-tree-based-indexing/)
- [CRDT: Mutable Tree Hierarchy](https://madebyevan.com/algos/crdt-mutable-tree-hierarchy/)
- [CRDT: Text Buffer](https://madebyevan.com/algos/crdt-text-buffer/)
- [Movable tree CRDTs and Loro's implementation](https://loro.dev/blog/movable-tree)
- [How CRDTs make multiplayer text editing part of Zed's DNA](https://zed.dev/blog/crdts)

## C

[My favorite C compiler flags during development](https://nullprogram.com/blog/2023/04/29/)

```sh
cc -Wall -Wextra ...
cc ... -fsanitize=address,undefined ...
cc -g3 -Wall -Wextra -Wconversion -Wdouble-promotion \
	-Wno-unused-parameter -Wno-unused-function -Wno-sign-conversion \
	-fsanitize=undefined -fsanitize-trap ...
```

### References

- [Beej's Guide to C Programming](https://beej.us/guide/bgc/html/split/index.html)
- [Beej's Guide to Network Programming](https://beej.us/guide/bgnet/html/split/index.html)
- [How to C in 2016](https://matt.sh/howto-c)
- [Few lesser known tricks, quirks and features of C](https://jorenar.com/blog/less-known-c)
- [You’ve just inherited a legacy C++ codebase, now what?](https://gaultier.github.io/blog/you_inherited_a_legacy_cpp_codebase_now_what.html#write-down-the-platforms-you-support)

- [strlcpy and how CPUs can defy common sense](https://nrk.neocities.org/articles/cpu-vs-common-sense)
- [isdigit: simple function, multiple implementation](https://nrk.neocities.org/articles/isdigit-multi-implementation)
- [Making my debug build run 100x faster so that it is finally usable](https://gaultier.github.io/blog/making_my_debug_build_run_100_times_faster.html)

## Python

[Stop using utcnow and utcfromtimestamp](https://blog.ganssle.io/articles/2019/11/utcnow.html)

```python
# Bad
dt_now = datetime.utcnow()
dt_ts = datetime.utcfromtimestamp(1571595618.0)

# Good
from datetime import timezone
dt_now = datetime.now(tz=timezone.utc)
dt_ts = datetime.fromtimestamp(1571595618.0, tz=timezone.utc)
```

### References

- [Breaking the Snake: How Python went from 2 to 3](https://www.deusinmachina.net/p/breaking-the-snake-how-python-went)
- [Thoughts on the Python packaging ecosystem](https://pradyunsg.me/blog/2023/01/21/thoughts-on-python-packaging/)
- [Why not tell people to "simply" use pyenv, poetry or anaconda](https://www.bitecode.dev/p/why-not-tell-people-to-simply-use)
- [A Retrospective on Requests](https://blog.ian.stapletoncordas.co/2024/02/a-retrospective-on-requests)
- [An Illustrated Guide to Shape and Strides (Part 1)](https://ajcr.net/stride-guide-part-1/)
- [An Illustrated Guide to Shape and Strides (Part 2)](https://ajcr.net/stride-guide-part-2/)
- [UV tricks](https://www.bitecode.dev/p/uv-tricks)
- [A year of uv: pros, cons, and should you migrate](https://www.bitecode.dev/p/a-year-of-uv-pros-cons-and-should)

## Zig/Rust

### References

- [Zig And Rust](https://matklad.github.io/2023/03/26/zig-and-rust.html#Zig-And-Rust)
- [Comptime Zig ORM](https://matklad.github.io/2025/03/19/comptime-zig-orm.html)

- [Rust Coreutils: Fixing Low-Hanging Performance Fruit](https://jackson.dev/post/rust-coreutils-dd/)
- [Rust's BufRead, And When To Use It](https://www.brandons.me/blog/bufread-and-when-to-use-it)
- [I sped up serde_json strings by 20%](https://purplesyringa.moe/blog/i-sped-up-serde-json-strings-by-20-percent/)
- [Trimming down a rust binary in half](https://tech.dreamleaves.org/trimming-down-a-rust-binary-in-half/)

## macOS

### References

- [Distributing Mac apps outside the App Store, a quick start guide](https://rambo.codes/posts/2021-01-08-distributing-mac-apps-outside-the-app-store)
- [Making macOS apps uninstallable](https://notes.alinpanaitiu.com/Making%20macOS%20apps%20uninstallable)
- [Keyboard tricks from a macOS app dev](https://notes.alinpanaitiu.com/Keyboard%20tricks%20from%20a%20macOS%20app%20dev)
- [Did you know about Instruments?](https://registerspill.thorstenball.com/p/did-you-know-about-instruments)

## UI/UX/Beautiful

### References

- [About Chinese Type Design - 1/3](https://www.lisahuang.work/about-chinese-type-design-1-3)
- [About Chinese Type Design - 2/3](https://www.lisahuang.work/about-chinese-type-design-2-3)
- [Việtnamese Typography](https://vietnamesetypography.com/introduction/)
- [Coloring Korean Keystrokes: 11'172 Characters](https://www.sam.today/blog/partial-jamo)
- [Font size is useless; let’s fix it](https://tonsky.me/blog/font-size/)
- [Font hinting](https://www.typotheque.com/articles/hinting)
- [Modern handwriting: a historical survey](https://www.typotheque.com/articles/modern-handwriting-a-historical-survey-1)
- [Shipping system fonts to GitHub.com](https://web.archive.org/web/20241002190100/https://markdotto.com/2018/02/07/github-system-fonts/)
- [Practical Typography](https://practicaltypography.com/)

- [Visual design rules you can safely follow every time](https://anthonyhobday.com/sideprojects/saferules/)
- [The invisible problem](https://jenson.org/text/)
- [Design can be free](https://jenson.org/free/)
- [Design can be free (part 2)](https://jenson.org/free2/)
- [Design can be free (part 3)](https://jenson.org/free3/)
- [Tactile Controls In A Digital World](https://jenson.org/airpod/)
- [Invisible Details of Interaction Design](https://rauno.me/craft/interaction-design)
- [Hardest Problem in Computer Science: Centering Things](https://tonsky.me/blog/centering/)
- [Notes on implementing dark mode](https://brandur.org/fragments/dark-mode-notes)
- [Heart of dark mode: done, and still in progress](https://tailscale.com/blog/heart-of-dark-mode)
- [Copying is the way design works](https://matthewstrom.com/writing/copying/)
- [The polish paradox](https://matthewstrom.com/writing/the-polish-paradox/)

## Security

[I have questions about MFA push notification fatigue](https://utcc.utoronto.ca/~cks/space/blog/tech/MFAPushFatigueQuestions)

> I tend to think push-based approval is the least secure of the three. I've
> read several incident reports where the attacker got a user's password and
> then repeatedly tried to log in, **spamming them with approval requests**
> until they gave in and tapped Approve.
>
> In this environment, getting a surprise MFA push request (or worse, several)
> out of the blue means that someone else has your password, which should cause
> you to hit some sort of big red security problem button to trigger at least a
> password change. It would also mean that **if someone explicitly rejects one**
> (or several) MFA push authentications, that should be a **red alert** to the
> security team (even if the person being spammed by notifications doesn't
> report it themselves). An MFA push notification might time out on its own for
> various reasons, but an active rejection is a very bad sign; it's the person
> telling you (the security system) that they did not make this request and
> actively rejected it.
>
> (If your organization has internal, non-guarded endpoints that can **trigger
> MFA push notifications without someone knowing your password**, this at least
> means that someone is inside your network hitting those endpoints. That ought
> to be a security issue all by itself.)

[TLS/SSL Certificates - For The Rest Of Us](https://tusharf5.com/posts/ssl-certificates-for-the-rest-of-us/)

> The CA verifies this information and issues a certificate, which contains your
> website’s public key and relevant details like allowed domain names. The CA
> signs the certificate using its private key and adds the signature to the
> certificate, allowing browsers to verify its authenticity using the CA’s
> public key.

### References

- [Community Cryptography Specification Project](https://github.com/C2SP/C2SP)

- [Password Storage Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html)
- [Adventures in password hashing + migrating to Argon2id](https://brandur.org/fragments/password-hashing)
- [Migrating weaker password hashes by nesting them in an outer hash](https://brandur.org/fragments/password-hash-nesting)
- [Database Cryptography Fur the Rest of Us](https://soatok.blog/2023/03/01/database-cryptography-fur-the-rest-of-us/)
- [What We Do in the /etc/shadow – Cryptography with Passwords](https://soatok.blog/2022/12/29/what-we-do-in-the-etc-shadow-cryptography-with-passwords/)
- [RSA is deceptively simple (and fun)](https://ntietz.com/blog/rsa-deceptively-simple/)
- [PINs for Cryptography with Hardware Secure Elements](https://words.filippo.io/dispatches/secure-elements/)
- [The most common 4-digit PIN numbers](https://informationisbeautiful.net/visualizations/most-common-pin-codes/)
- [XAES-256-GCM](https://words.filippo.io/dispatches/xaes-256-gcm/)
- [A (Relatively Easy To Understand) Primer on Elliptic Curve Cryptography](https://blog.cloudflare.com/a-relatively-easy-to-understand-primer-on-elliptic-curve-cryptography/)
- [42.parquet – A Zip Bomb for the Big Data Age](https://duckdb.org/2024/03/26/42-parquet-a-zip-bomb-for-the-big-data-age.html)
  - [Explain Parquet like I'm Five](https://dev.to/parseable/explain-parquet-like-im-five-n9h)
- [HTTP/2 CONTINUATION Flood: Technical Details](https://nowotarski.info/http2-continuation-flood-technical-details/)
- [The Cryptographic Doom Principle](https://moxie.org/2011/12/13/the-cryptographic-doom-principle.html)
- [What To Use Instead of PGP](https://soatok.blog/2024/11/15/what-to-use-instead-of-pgp/)

- [What is a parser mismatch vulnerability?](https://www.brainonfire.net/blog/2022/04/11/what-is-parser-mismatch/)
- [Preventing (and fixing) parser mismatch vulnerabilities](https://www.brainonfire.net/blog/2022/04/29/preventing-parser-mismatch/)
- [Exploiting aCropalypse: Recovering Truncated PNGs](https://www.da.vidbuchanan.co.uk/blog/exploiting-acropalypse.html)
- [No new iPhone? No secure iOS: Looking at an unfixed iOS vulnerability](https://joshua.hu/apple-ios-patched-unpatched-vulnerabilities)
- [Testing a new encrypted messaging app's extraordinary claims](https://crnkovic.dev/testing-converso/)
- [Reverse Engineering TicketMaster's Rotating Barcodes (SafeTix)](https://conduition.io/coding/ticketmaster/)
- [The Six Dumbest Ideas in Computer Security](https://www.ranum.com/security/computer_security/editorials/dumb/)
- [How I hacked hundreds of companies through their helpdesk](https://medium.com/intigriti/how-i-hacked-hundreds-of-companies-through-their-helpdesk-b7680ddc2d4c)
- [1 bug, $50,000+ in bounties, how Zendesk intentionally left a backdoor in hundreds of Fortune 500 companies](https://gist.github.com/hackermondev/68ec8ed145fcee49d2f5e2b9d2cf2e52)
- [How we Outsmarted CSGO Cheaters with IdentityLogger](https://mobeigi.com/blog/gaming/how-we-outsmarted-csgo-cheaters-with-identitylogger/)
- [Hacking 700 Million Electronic Arts Accounts](https://battleda.sh/blog/ea-account-takeover)
- [Breaking the 4Chan CAPTCHA](https://www.nullpt.rs/breaking-the-4chan-captcha)
- [Unique Identifiers That Don’t Expire](https://harishpillay.com/2024/12/18/unique-identifier-that-dont-expire/)
- [Everyone knows your location: tracking myself down through in-app ads](https://timsh.org/tracking-myself-down-through-in-app-ads/)
- [League of Legends data scraping the hard and tedious way for fun](https://maknee.github.io/blog/2025/League-Data-Scraping/)

## Misc

[Dockerignore troubles](https://garrit.xyz/posts/2023-02-22-dockerignore-troubles)
Use `.dockerignore` not `.Dockerignore`.

[How to access docker container from host WITHOUT port mapping?](https://stackoverflow.com/q/71820845)

Use `docker inspect $id` to get container ip.

[From inside of a Docker container, how do I connect to the localhost of the machine?](https://stackoverflow.com/a/24326540)

Use `host.docker.internal` to connect to localhost from inside container.

[Set specific IP addresses to docker containers created with docker-compose](https://alejandrocelaya.blog/2017/04/21/set-specific-ip-addresses-to-docker-containers-created-with-docker-compose/)

```yaml
version: "3"

services:
  test_1:
    container_name: test_1
    image: some:image
    networks:
      testing_net:
        ipv4_address: 172.28.1.1

  test_2:
    container_name: test_2
    image: some:image
    networks:
      testing_net:
        ipv4_address: 172.28.1.2

  test_3:
    container_name: test_3
    image: some:image
    networks:
      testing_net:
        ipv4_address: 172.28.1.3

networks:
  testing_net:
    ipam:
      driver: default
      config:
        - subnet: 172.28.0.0/16
```

openssl gen key:

```sh
openssl genpkey -algorithm ed25519 -out private.pem
openssl pkey -in private.pem -pubout -out public.pem
```

### References

- [How Euler Did It, by Ed Sandifer](http://eulerarchive.maa.org/hedi/index.html)
- [The values of Emacs, the Neovim revolution, and the VSCode gorilla](https://www.murilopereira.com/the-values-of-emacs-the-neovim-revolution-and-the-vscode-gorilla/)
- [Hello, PNG!](https://www.da.vidbuchanan.co.uk/blog/hello-png.html)
- [H.264 is Magic](https://sidbala.com/h-264-is-magic/)
- [What even is a JSON Number?](https://blog.trl.sn/blog/what-is-a-json-number/)
- [Fun with IP address parsing](https://blog.dave.tf/post/ip-addr-parsing/)
- [The Elegance of the ASCII Table](https://danq.me/2024/07/21/ascii/)
- [The Fastest, Safest PNG Decoder in the World](https://nigeltao.github.io/blog/2021/fastest-safest-png-decoder.html)
- [Everything you ever wanted to know about UDP sockets but were afraid to ask, part 1](https://blog.cloudflare.com/everything-you-ever-wanted-to-know-about-udp-sockets-but-were-afraid-to-ask-part-1/)
- [Bit Twiddling Hacks](https://graphics.stanford.edu/~seander/bithacks.html)
- [The secret life of DNS packets: investigating complex networks](https://stripe.com/blog/secret-life-of-dns)
- [getaddrinfo sucks. everything else is much worse](https://valentin.gosu.se/blog/2025/02/getaddrinfo-sucks-everything-else-is-much-worse)

- [git rebase: what can go wrong?](https://jvns.ca/blog/2023/11/06/rebasing-what-can-go-wrong-/)
- [Popular git config options](https://jvns.ca/blog/2024/02/16/popular-git-config-options/)
- [Modern Git Commands and Features You Should Be Using](https://martinheinz.dev/blog/109)
- [The Myers diff algorithm: part 1](https://blog.jcoglan.com/2017/02/12/the-myers-diff-algorithm-part-1/)
- [The Myers diff algorithm: part 2](https://blog.jcoglan.com/2017/02/15/the-myers-diff-algorithm-part-2/)
- [Writing commit messages](https://www.chiark.greenend.org.uk/~sgtatham/quasiblog/commit-messages/)
- [Our RNG Git Hash Bug](https://tmendez.dev/posts/rng-git-hash-bug/)

- [How fast is your shell?](https://registerspill.thorstenball.com/p/how-fast-is-your-shell)
- [Faster and enjoyable ZSH (maybe)](https://htr3n.github.io/2018/07/faster-zsh/)
- [State of input method](https://dorotac.eu/posts/input_broken/)
- [systemd by example](https://seb.jambor.dev/posts/systemd-by-example-part-1-minimization/)
- [Why do regexes use `$` and `^` as line anchors?](https://buttondown.email/hillelwayne/archive/why-do-regexes-use-and-as-line-anchors/)
- [Entering text in the terminal is complicated](https://jvns.ca/blog/2024/07/08/readline/)
- [The Linux audio stack demystified](https://blog.rtrace.io/posts/the-linux-audio-stack-demystified/)
- [SVG cursors: everything that you need to know about them](https://blog.vladzahorodnii.com/2024/10/06/svg-cursors-everything-that-you-need-to-know-about-them/)

- [Copying with Super+C](https://whynothugo.nl/journal/2022/11/04/copying-with-super-c/)
- [Handy macOS QuickLook configurations](https://htr3n.github.io/2018/07/handy-quicklook/)
- [Weird monitor bugs people sent me in the last 5 years](https://notes.alinpanaitiu.com/Weird-monitor-bugs)
- [Ideal monitor rotation for programmers](https://sprocketfox.io/xssfox/2021/12/02/xrandr/)
- [Automatic dark mode for terminal applications](https://arslan.io/2021/02/15/automatic-dark-mode-for-terminal-applications/)

- [Why the hell is your Kubernetes API public?](https://leebriggs.co.uk/blog/2024/03/23/why-public-k8s-controlplane)
- [How do I run a docker instance from a DockerFile?](https://stackoverflow.com/a/36076856)
- [Understanding DNS resolution on Linux and Kubernetes](http://jpetazzo.github.io/2024/05/12/understanding-kubernetes-dns-hostnetwork-dnspolicy-dnsconfigforming/)
- [Content hashing static assets to break caches with md5sum and bash](https://robertwpearce.com/content-hashing-static-assets-to-break-caches-with-md5sum-and-bash.html)
- [Engineering for Slow Internet](https://brr.fyi/posts/engineering-for-slow-internet)
- [Adding GeoIP alerting to your SSH logins](https://ivo.palli.nl/2024/07/18/adding-geoip-alerting-to-your-ssh-logins/)
- [slow TCP connect on Windows](https://daniel.haxx.se/blog/2024/08/14/slow-tcp-connect-on-windows/)
- [Visual guide to SSH tunneling and port forwarding](https://ittavern.com/visual-guide-to-ssh-tunneling-and-port-forwarding/)
- [Understanding Round Robin DNS](https://blog.hyperknot.com/p/understanding-round-robin-dns)
- [Building Container Images FROM Scratch: 6 Pitfalls That Are Often Overlooked](https://labs.iximiuz.com/tutorials/pitfalls-of-from-scratch-images)

## Hardware

### References

- [Installing a payphone in my house](https://bert.org/2022/06/02/payphone/)
- [Taking over a Dead IoT Company](https://blog.kchung.co/taking-over-a-dead-iot-company/)
- [Wireless is a trap](https://www.benkuhn.net/wireless/)
- [A Quick Tour of NVM Express (NVMe)](https://metebalci.com/blog/a-quick-tour-of-nvm-express-nvme/)
- [E-ink is so Retropunk](https://rmkit.dev/eink-is-so-retropunk/)
- ["What the heck is a Yubikey and why did I buy one?": A user guide](https://gist.github.com/sm-Fifteen/df1a94b6b6e0670e0b5a0c362ef2faa2)
- [Erasure Coding For The Masses/More Math, Less Money To Keep Your Data Safe](https://towardsdatascience.com/erasure-coding-for-the-masses-2c23c74bf87e)
- [DO NOT BUY HISENSE TV'S LOL (Or at least keep them offline)](https://cohost.org/ghoulnoise/post/5286766-do-not-buy-hisense-t)
- [Zen 5’s 2-Ahead Branch Predictor Unit: How a 30 Year Old Idea Allows for New Tricks](https://chipsandcheese.com/2024/07/26/zen-5s-2-ahead-branch-predictor-unit-how-30-year-old-idea-allows-for-new-tricks/)
- [Why you should fall in love with the RP2350](https://dmitry.gr/?r=06.%20Thoughts&proj=11.%20RP2350)
- [How I Designed a Dieter Rams inspired iPhone Dock](https://arslan.io/2024/09/23/dieter-rams-inspired-iphone-dock/)
- [The challenge of updating InsydeH2O UEFI with Linux](https://thebrokenrail.com/2024/09/29/the-challenge-of-insyde-h2o.html)
- [DDR4 memory organization and how it affects memory bandwidth](https://blog.cloudflare.com/ddr4-memory-organization-and-how-it-affects-memory-bandwidth/)
- [Can Dell’s 6K monitor beat their 8K monitor? (2023)](https://michael.stapelberg.ch/posts/2023-07-03-dell-u3224kba-32-inch-6k-monitor/)
- [Using an 8K TV as a monitor](https://daniel.lawrence.lu/blog/y2023m12d15/)
- [Using a Samsung QN700B 8k TV as a Monitor](https://scottstuff.net/posts/2023/10/10/samsung-8k/)
- [How Do AirTags Work ](https://newsletter.systemdesign.one/p/how-do-airtags-work)

- [25 Gigabit Linux internet router PC build (2021)](https://michael.stapelberg.ch/posts/2021-07-10-linux-25gbit-internet-router-pc-build/)
- [My 2022 high-end Linux PC 🐧 (2022)](https://michael.stapelberg.ch/posts/2022-01-15-high-end-linux-pc/)
- [Ryzen 7 Mini-PC makes a power-efficient VM host](https://michael.stapelberg.ch/posts/2024-07-02-ryzen-7-mini-pc-low-power-proxmox-hypervisor/)
- [My Homelab Setup](https://arslan.io/2024/09/10/my-homelab-setup/)
- [Intel 9 285K on ASUS Z890: not stable!](https://michael.stapelberg.ch/posts/2025-03-19-intel-core-ultra-9-285k-on-asus-z890-not-stable/)

## Kindle

Remove ads on Kindle:

```sh
rm -r /Volumes/Kindle/system/.assets
rm -r /Volumes/Kindle/system/._.assets

touch /Volumes/Kindle/system/.assets
touch /Volumes/Kindle/system/._.assets
```

### References

- https://github.com/mariopepe/KindleAdRemover
- https://github.com/innocenat/kindle-epub-fix
- https://github.com/treetrum/amazon-kindle-bulk-downloader

## Soft skill

### References

- [The Pragmatic Engineer's Resume Template](https://blog.pragmaticengineer.com/the-pragmatic-engineers-resume-template/)
- [My Guide To Writing A Killer Cover Letter](https://www.reddit.com/r/datascience/comments/tag8l5/my_guide_to_writing_a_killer_cover_letter/)
- [NDAs and Contracts That You Should Never Sign](https://www.joelonsoftware.com/2000/03/28/ndas-and-contracts-that-you-should-never-sign/)
- [Contracts you should never sign](https://vadimkravcenko.com/about-me/)
- [This is how we make slides at Apple.](https://medium.com/adventures-in-consumer-technology/this-is-how-we-make-slides-at-apple-b8a84352bf6d)

## Money

### References

- [Bookkeeping and accounting](https://stripe.com/in/guides/atlas/bookkeeping-and-accounting)
- https://moov.io/resources/dictionary/
- [ACH File Details](https://achdevguide.nacha.org/ach-file-details)

- [Engineers Do Not Get To Make Startup Mistakes When They Build Ledgers](https://news.alvaroduran.com/p/engineers-do-not-get-to-make-startup)
- [Double-Entry Bookkeeping as a Directed Graph](https://matheusportela.com/double-entry-bookkeeping-as-a-directed-graph)
- [Visa: half a century of high availability](https://increase.com/articles/visa-redundancy)
- [ISO 8583: The language of credit cards](https://increase.com/articles/iso-8583-the-language-of-credit-cards)

- [The Guide to Stock Options conversations](https://zaidesanton.substack.com/p/the-guide-to-stock-options-conversations)
