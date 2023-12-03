## Software Enginerring

[Cool URIs don't change](https://www.w3.org/Provider/Style/URI)

Design URI/URL path to livelong. Keep out:

- Author name (author can change name)
- Status (wip, draft, …)
- Filename extensions (.html, …)

Good example: `http://www.w3.org/1998/12/01/chairs`

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

## Rust

## References

- [Rust Coreutils: Fixing Low-Hanging Performance Fruit](https://jackson.dev/post/rust-coreutils-dd/)
- [Rust's BufRead, And When To Use It](https://www.brandons.me/blog/bufread-and-when-to-use-it)

## macOS

### References

- [Distributing Mac apps outside the App Store, a quick start guide](https://rambo.codes/posts/2021-01-08-distributing-mac-apps-outside-the-app-store)
- [Making macOS apps uninstallable](https://notes.alinpanaitiu.com/Making%20macOS%20apps%20uninstallable)
- [Keyboard tricks from a macOS app dev](https://notes.alinpanaitiu.com/Keyboard%20tricks%20from%20a%20macOS%20app%20dev)

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
