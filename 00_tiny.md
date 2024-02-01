# 00_tiny

## Software Engineering

[Write code that is easy to delete, not easy to extend.](https://programmingisterrible.com/post/139222674273/write-code-that-is-easy-to-delete-not-easy-to)

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

> But everyone needs to keep solving the imaginary problems, because if they
> stop creating and solving these problems, if they start focusing on the _real_
> problems, they might realize the whole system is broken. They might realize
> Debra has been sitting in that corner, staring at uptime graphs of the
> internal server farm for 10 years, despite the fact that the company moved to
> AWS five years ago. They might realize 99 percent of their job is to
> perpetuate the existence of someone else’s job. And that’s a hard realization
> to digest—impossible for most, I dare say. So, instead, most find a way of
> coping.

### References

- [Systems design explains the world: volume 1](https://apenwarr.ca/log/20201227)
- [Systems design 2: What we hope we know](https://apenwarr.ca/log/20230415)
- [Tech debt metaphor maximalism](https://apenwarr.ca/log/20230605)
- [Smart Guy Productivity Pitfalls](https://waivek.github.io/website/tooltip.html)
- [Rewrite, refactor, or reinvent?](https://herbcaudill.com/words/20190219-rewrite-refactor-reinvent)
- [Stop saying “technical debt”](https://stackoverflow.blog/2023/02/27/stop-saying-technical-debt/)
- [A List of Post-mortems!](https://github.com/danluu/post-mortems)

## Programming

[Cool URIs don't change](https://www.w3.org/Provider/Style/URI)

Design URI/URL path to livelong. Keep out:

- Author name (author can change name)
- Status (wip, draft, …)
- Filename extensions (.html, …)

Good example: `http://www.w3.org/1998/12/01/chairs`

[The Log: What every software engineer should know about real-time data's unifying abstraction](https://engineering.linkedin.com/distributed-systems/log-what-every-software-engineer-should-know-about-real-time-datas-unifying)

> A log is perhaps the simplest possible storage abstraction. It is an
> append-only, totally-ordered sequence of records ordered by time. It looks
> like this:
>
> Records are appended to the end of the log, and reads proceed left-to-right.
> Each entry is assigned a unique sequential log entry number.
>
> Over-time the usage of the log grew from an implementation detail of ACID to a
> method for replicating data between databases. It turns out that the sequence
> of changes that happened on the database is exactly what is needed to keep a
> remote replica database in sync. Oracle, MySQL, and PostgreSQL include log
> shipping protocols to transmit portions of log to replica databases which act
> as slaves.
>
> The two problems a log solves—ordering changes and distributing data—are even
> more important in distributed data systems.

TODO: Read the log to the end !!!

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

[When Taylor Swift crashed Ticketmaster: A lesson on scaling for spikes](https://learningdaily.dev/when-taylor-swift-crashed-ticketmaster-a-lesson-on-scaling-for-spikes-9931e2c888e9)

> This scenario is not new to the world of distributed computing and even has a
> name you may have heard of before: **“The Thundering Herd” problem**. Large
> distributed systems like Facebook have dealt with far more extreme thundering
> herds than the Taylor Swift fans. What happened to Ticketmaster is not an
> unsolved problem.

### References

- [Using Apache Kafka to process 1 trillion inter-service messages](https://blog.cloudflare.com/using-apache-kafka-to-process-1-trillion-messages/)
- [Examples of floating point problems](https://jvns.ca/blog/2023/01/13/examples-of-floating-point-problems/)
- [why GNU grep is fast](https://lists.freebsd.org/pipermail/freebsd-current/2010-August/019310.html)

## C/C++

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
- [A Regular Expression Matcher](https://www.cs.princeton.edu/courses/archive/spr09/cos333/beautiful.html)

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
- [Lessons learned from 15 years of SumatraPDF, an open source Windows app](https://blog.kowalczyk.info/article/2f72237a4230410a888acbfce3dc0864/lessons-learned-from-15-years-of-sumatrapdf-an-open-source-windows-app.html)
- [Dynamic Programming is not Black Magic](https://qsantos.fr/2024/01/04/dynamic-programming-is-not-black-magic/)

## Zig/Rust

### References

- [Rust Coreutils: Fixing Low-Hanging Performance Fruit](https://jackson.dev/post/rust-coreutils-dd/)
- [Rust's BufRead, And When To Use It](https://www.brandons.me/blog/bufread-and-when-to-use-it)
- [Zig And Rust](https://matklad.github.io/2023/03/26/zig-and-rust.html#Zig-And-Rust)

## macOS

### References

- [Distributing Mac apps outside the App Store, a quick start guide](https://rambo.codes/posts/2021-01-08-distributing-mac-apps-outside-the-app-store)
- [Making macOS apps uninstallable](https://notes.alinpanaitiu.com/Making%20macOS%20apps%20uninstallable)
- [Keyboard tricks from a macOS app dev](https://notes.alinpanaitiu.com/Keyboard%20tricks%20from%20a%20macOS%20app%20dev)
- [Reclaiming storage/space from 'System Data' in macOS: A tutorial on understanding the System Data usage](http://blog.greggant.com/posts/2022/04/10/reclaiming-space-from-system-data-in-macos.html)

## UI/UX/Beautiful

### References

- [Visual design rules you can safely follow every time](https://anthonyhobday.com/sideprojects/saferules/)
- [The invisible problem](https://jenson.org/text/)
- [Design can be free](https://jenson.org/free/)
- [About Chinese Type Design - 1/3](https://www.lisahuang.work/about-chinese-type-design-1-3)
- [Việtnamese Typography](https://vietnamesetypography.com/introduction/)
- [Font size is useless; let’s fix it](https://tonsky.me/blog/font-size/)
- [Shipping system fonts to GitHub.com](https://markdotto.com/2018/02/07/github-system-fonts/)
- [Invisible Details of Interaction Design](https://rauno.me/craft/interaction-design)

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

### References

- [What is a parser mismatch vulnerability?](https://www.brainonfire.net/blog/2022/04/11/what-is-parser-mismatch/)
- [Preventing (and fixing) parser mismatch vulnerabilities](https://www.brainonfire.net/blog/2022/04/29/preventing-parser-mismatch/)
- [Exploiting aCropalypse: Recovering Truncated PNGs](https://www.da.vidbuchanan.co.uk/blog/exploiting-acropalypse.html)
- [No new iPhone? No secure iOS: Looking at an unfixed iOS vulnerability](https://joshua.hu/apple-ios-patched-unpatched-vulnerabilities)
- [Password Storage Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html)
- [What We Do in the /etc/shadow – Cryptography with Passwords](https://soatok.blog/2022/12/29/what-we-do-in-the-etc-shadow-cryptography-with-passwords/)
- [Adventures in password hashing + migrating to Argon2id](https://brandur.org/fragments/password-hashing)
- [Migrating weaker password hashes by nesting them in an outer hash](https://brandur.org/fragments/password-hash-nesting)
- [Database Cryptography Fur the Rest of Us](https://soatok.blog/2023/03/01/database-cryptography-fur-the-rest-of-us/)
- [Testing a new encrypted messaging app's extraordinary claims](https://crnkovic.dev/testing-converso/)

## Misc

[Dockerignore troubles](https://garrit.xyz/posts/2023-02-22-dockerignore-troubles)
Use `.dockerignore` not `.Dockerignore`.

[OpenSSH client side key management for better privacy and security](https://tim.siosm.fr/blog/2023/01/13/openssh-key-management/)
Edit `~/.ssh/config`

```ssh
Host *
    IdentitiesOnly yes
```

openssl gen key:

```sh
openssl genpkey -algorithm ed25519 -out private.pem
openssl pkey -in private.pem -pubout -out public.pem
```

### References

- [Copying with Super+C](https://whynothugo.nl/journal/2022/11/04/copying-with-super-c/)
- [The values of Emacs, the Neovim revolution, and the VSCode gorilla](https://www.murilopereira.com/the-values-of-emacs-the-neovim-revolution-and-the-vscode-gorilla/)
- [git rebase: what can go wrong?](https://jvns.ca/blog/2023/11/06/rebasing-what-can-go-wrong-/)
- [Ideal monitor rotation for programmers](https://sprocketfox.io/xssfox/2021/12/02/xrandr/)
- [Hello, PNG!](https://www.da.vidbuchanan.co.uk/blog/hello-png.html)
- [How fast is your shell?](https://registerspill.thorstenball.com/p/how-fast-is-your-shell)
- [Faster and enjoyable ZSH (maybe)](https://htr3n.github.io/2018/07/faster-zsh/)
- [Handy macOS QuickLook configurations](https://htr3n.github.io/2018/07/handy-quicklook/)
- [Content hashing static assets to break caches with md5sum and bash](https://robertwpearce.com/content-hashing-static-assets-to-break-caches-with-md5sum-and-bash.html)

## Hardware

### References

- [Installing a payphone in my house](https://bert.org/2022/06/02/payphone/)
- [Taking over a Dead IoT Company](https://blog.kchung.co/taking-over-a-dead-iot-company/)
- [Wireless is a trap](https://www.benkuhn.net/wireless/)
- [A Quick Tour of NVM Express (NVMe)](https://metebalci.com/blog/a-quick-tour-of-nvm-express-nvme/)
- [E-ink is so Retropunk](https://rmkit.dev/eink-is-so-retropunk/)
- ["What the heck is a Yubikey and why did I buy one?": A user guide](https://gist.github.com/sm-Fifteen/df1a94b6b6e0670e0b5a0c362ef2faa2)

## Leadership

### References

- [An Engineering Team where Everyone is a Leader](https://blog.pragmaticengineer.com/a-team-where-everyone-is-a-leader/)

## Interview

### References

- [The Pragmatic Engineer's Resume Template](https://blog.pragmaticengineer.com/the-pragmatic-engineers-resume-template/)
- [My Guide To Writing A Killer Cover Letter](https://www.reddit.com/r/datascience/comments/tag8l5/my_guide_to_writing_a_killer_cover_letter/)
- [NDAs and Contracts That You Should Never Sign](https://www.joelonsoftware.com/2000/03/28/ndas-and-contracts-that-you-should-never-sign/)
- [Contracts you should never sign](https://vadimkravcenko.com/about-me/)

## Money

### References

- [Bookkeeping and accounting](https://stripe.com/in/guides/atlas/bookkeeping-and-accounting)
