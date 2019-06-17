---
title: "Automagical HTTPS with Docker and Go"
date: 2019-06-02T15:17:14+08:00
---

HTTPS sites is pretty common nowadays.  and you don't want chrome to flag your site as not insecure in location bar, right?

So if you need to serve your go application over HTTPS. A common way of quickly achieving this goal was by utilising [Let’s Encrypt](https://letsencrypt.org/), however it's a little too fiddly to setup, renew certifcates later. it would be to automate all process entirely, including downloading certificate, certificate renewal....

[Brendan] writes a nice [article]((https://medium.com/weareservian/automagical-https-with-docker-and-go-4953fdaf83d2) ) about this.

I've tried it in my project, it's perfect. highly recommond to read it.


### links:

- [acme/autocert](https://godoc.org/golang.org/x/crypto/acme/autocert)

- [article](https://medium.com/weareservian/automagical-https-with-docker-and-go-4953fdaf83d2)

- [code on github](https://github.com/bmon/go-web-base)
