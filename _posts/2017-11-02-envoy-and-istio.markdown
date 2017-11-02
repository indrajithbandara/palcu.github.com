---
title: Envoy and Istio
layout: post
categories: english, link
tags: envoy istio
custom_url: https://news.ycombinator.com/item?id=15359726
date: "2017-11-02 23:00:12"
---

> Envoy/Istio are designed to move logic out of your apps and into the middleware.

> For example, say your app A makes an HTTP request to app B and app B times out. Ordinarily app A has to build in retry logic (with expontential backoff to avoid dogpiling). Fine if you have a single app, but if you have a dozen microservices, that's a lot of duplicated code.

> The solution is to let a proxy handle it for you. Instead of A -> B, you get A -> Envoy -> B. Envoy can do things like retrying, name resolution (something more flexible than DNS that can, say, be used to do A/B tests where traffic to B actually gets routed to another instance of B that runs code from a different branch), load balancing, request/bandwidth throttling, circuit-breaking (failing requests when an overload "trips" the breaker), logging, profiling (measuring timings and making them available to, say, Prometheus), tracing (inserting HTTP headers to generate a path so if a request goes A -> B -> C, then C has a complete "stack trace" that can be used for logging), and so on.

> Istio adds a layer of transparency, at least on Kubernetes. Instead of configuring app A to use a proxy, app A just talks to app B as though there's no proxy at all. In reality, Istio has injected some local network magic in the container to route the traffic through the proxy.

It took me an evening to understand how these pieces fit together, and this
Hacker News comment was the best explanation. I have _playing with Kubernetes_
on my weekend to do list for a while.
