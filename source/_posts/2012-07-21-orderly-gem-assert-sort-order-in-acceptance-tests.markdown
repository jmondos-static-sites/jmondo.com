---
layout: post
title: "Orderly gem: Assert sort order in acceptance tests"
date: 2012-07-21 20:03
comments: true
categories: dev
description: Because sometimes you just need to assert that this appears before that on a page. There are many ways to do this, and I've tried lots of them in my work with LaunchWare. Most of them were ugly, clunky, brittle, or inefficient.
---
Because sometimes you just need to assert that this appears before that on a page. Like when testing sort order.

For more explanation, derivation, and geekery, check out my original post on the [LaunchWare Blog](http://launchware.com/articles/acceptance-testing-asserting-sort-order) from last week!

## The approach
There are many ways to do this, and I've tried lots of them in my work with LaunchWare. Most of them were ugly, clunky, brittle, or inefficient. Then I thought of a simple solution. Find the index (or position) of one piece of text ("this") on the page and then find the index of the other ("that") and assert like so:

    page.body.index(this).should < page.body.index(that)

## The gem
Simple enough right? So I made it into a custom rspec matcher, which I then gemified and web 2.0ified. It's called orderly and it's available at ```gem install orderly``` :) Also source code is on [Github](https://github.com/jmondo/orderly) for your forking pleasure.

Now you can write:

    this.appears_before(that)

And as a bonus, it's got built in error handling if this or that aren't found on the page. It'll even tell you which one is missing.

Trust me, it's fun. Soon you'll be thinking _you know what would make this app better? Putting things in a strict, complicated order so that we stack orderly assertions on assertions on assertions_.
