## Software Engineering

[Cool URIs don't change](https://www.w3.org/Provider/Style/URI)

Design URI/URL path to livelong. Keep out:

- Author name (author can change name)
- Status (wip, draft, …)
- Filename extensions (.html, …)

Good example: `http://www.w3.org/1998/12/01/chairs`

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

### References

- [Systems design explains the world: volume 1](https://apenwarr.ca/log/20201227)
- [Systems design 2: What we hope we know](https://apenwarr.ca/log/20230415)
- [Tech debt metaphor maximalism](https://apenwarr.ca/log/20230605)

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

## Zig/Rust

## References

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

## Hardware

### References

- [Installing a payphone in my house](https://bert.org/2022/06/02/payphone/)
- [Taking over a Dead IoT Company](https://blog.kchung.co/taking-over-a-dead-iot-company/)
- [Wireless is a trap](https://www.benkuhn.net/wireless/)
- [A Quick Tour of NVM Express (NVMe)](https://metebalci.com/blog/a-quick-tour-of-nvm-express-nvme/)
- [E-ink is so Retropunk](https://rmkit.dev/eink-is-so-retropunk/)

## Leadership

### References

- [An Engineering Team where Everyone is a Leader](https://blog.pragmaticengineer.com/a-team-where-everyone-is-a-leader/)
