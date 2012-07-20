---
layout: post
title: "Using Github downloads for private dependencies (bonus: geolocation)"
date: 2012-07-16 16:00
comments: true
categories: dev
description: "I spiked a research project on IP geolocation data. All signs point to the best professional solution being maxmind. The data turned out to be 28 MB. First we thought - put the file s3 private storage. Then Github downloads... "
---
## Geolocation

I've been working on WhatNext, a social network for the cancer community via LaunchWare. And this week, the site got some geolocation love. After hacking together a combination of Google queries, resque jobs, and some backbone-js-HTML5 location code, we realized that we needed something instant, even if it's slightly less accurate.

So back to the drawing board. I spiked a research project on IP geolocation data. My findings, as officially published in the LaunchWare HipChat room:

> all signs point to the best professional solution being maxmind, there are others, but they're "because it's cheaper!" or "this is free check it out, it's awesome!" but that was the most accurate by my small (~20) testing sample, and seems to have been around forever. and the 'stick it to the man' services point to that as 'the man', which i think [the client] would appreciate for reliability. plus it has a gem that makes it super easy to use (though you need to compile some dependencies),

><http://www.maxmind.com/app/city> is what we need. its $370 once and $90 for updates. and US-only database is $250 one time fee, and $61 per month of updates.

>the gem is at <https://github.com/mtodd/geoip>

Using this data was a dream, so if you're looking for geolocation data for a ruby/rails project, look no further. They also have free data which is quoted as 2-3% less accurate. The only thing is, where do we store the data?

## Data Storage

The data turned out to be 28 MB. Not something we want wasting space in our repo and slowing down deploys. We need a solution that can be quickly run on staging and production servers as well as locally for each new developer on the project. A one liner for a readme would be ideal.

First we thought - put the file s3 private storage. Create a rake task to pass the credentials and download the files, creating the system directories along the way if they don't already exist. Not simple enough.

Then **Github downloads** came to mind. Our repo is already private, therefore so are our files. I clicked "Downloads" in our repo and uploaded the 28 MB file with one more click.

Next we have to download it. Their help files make that super easy.

<https://help.github.com/articles/downloading-files-from-the-command-line>

Check it out:

    curl -u 'github username' -L -o /usr/local/share/GeoIP/GeoIPCityus.dat

Just type your github password when prompted. One command to download the file, put it where our app expects to find it, and create the directories along the way. We can run this command with data updates as often as we please.

Github continues to make life easy. I love it. Congrats on the funding by the way. And for bootstrapping it this far.
