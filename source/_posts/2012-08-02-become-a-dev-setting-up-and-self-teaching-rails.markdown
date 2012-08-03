---
layout: post
title: "Become a dev: The road to setting up and teaching yourself Ruby on Rails"
date: 2012-08-02 18:58
comments: true
categories: dev
description: "Rails (or 'Ruby on Rails') is the framework. Analogy: it's like learning shorthand or IM speak in Spanish. It's kind of hard to learn shorthand if you don't know the language, so you shouldn't blow right by the Ruby stuff above."
---
People ask me multiple times per week - "alright John, you convinced me to learn programming, but how do I get rails on my computer?" I've sent this email to about 25 people. Check it out, with some updates especially for you, dearest blog reader.

## Setup

You need Ruby on Rails and some dependencies (like a database, git, etc) as well as a text editor to actually write code. Here's how to install both on Mac and Windows.

### Ruby on Rails (mac/win)

1. Go to railsinstaller.org (download the kit)

      If you're having trouble getting the mac version to download, try this [Download page](https://github.com/railsinstaller/railsinstaller-nix/downloads)

2. Run the railsinstaller from step 1, defaults are fine
3. Open a terminal or console window and run "gem install rails" to upgrade rails if necessary

Techie notes about rails installer for mac: I was wary about using this, but a friend allowed me to use his out of the box mac as a guinea pig. Turns out, it installs the stuff the same way I would have told you to do it, using gcc without the full XCode and rvm (does a system install, installs the current version of ruby and rails). As you'll learn below, it meshes well with homebrew when you need to install native dependencies down the line. So it's both geek and n00b approved. That's what makes it so awesome.


### Editor

Sublime:
Install Sublime Text 2 for your platform from <http://www.sublimetext.com/2>

Now go make something cool!

## Learn, and make something cool!

If you're just getting started, that project you've always wanted to make... you know, the one you couldn't find a developer to create, so now you're here hoping you're a natural? I hate to be the one to break it to you. It's not going to be that easy.

You should first play along with a few almost-as-cool-but-still-not-as-cool-as-your-idea tutorials. While I applaud ambition, the time you spend on these tutorials will pay off 5-10x later (like in the next few days).

The more perspective you gain about what you're doing, the more the things you try will "click". Make it a point to not to be a copy-paste monkey.

Also understand that if you're "tech savvy" this will still probably take you a few weeks to a month to get from zero to "novice programmer." But once you get over that barrier, you can build stuff! So if you're the maker type, the motivation is self perpetuating from there on in. Get through [the dip](http://sethgodin.typepad.com/the_dip/)!

Here's a whole bunch of awesome resources for ruby, rails, and html/css.


#### HTML/CSS
You're coding a web app. So you should probably know how web browsers work and display content. Lots of the code you write will be HTML/CSS, so you should know the basics before you proceed. Maybe even sprinkle on some javascript here, though not necessary for beginners.

* <http://www.w3schools.com/html/>
* <http://htmldog.com/>
* <http://html5doctor.com/> Great reference for html5 selectors and what they should be used for

#### Ruby

Ruby is the language. Analogy: it's like learning a foreign language, say Spanish.

* <http://ruby.bastardsbook.com/>
* <http://ruby.bastardsbook.com/resources/> (more resources)
* <http://ruby.railstutorial.org/ruby-on-rails-tutorial-book> - lots of cool tutorials including a twitter clone, covers zero to deployment (putting your site on the web)

#### Rails

Rails (or 'Ruby on Rails') is the framework. Analogy: it's like learning shorthand or IM speak in Spanish. It's kind of hard to learn shorthand if you don't know the language, so you shouldn't blow right by the Ruby stuff above.

That being said, IM speak and shorthand only use the simple parts of the language, as does Rails, so you don't need to be an expert in Ruby to start learning Rails.

* <http://net.tutsplus.com/tutorials/ruby/the-intro-to-rails-screencast-i-wish-i-had/>
* <http://www.codeschool.com/courses/rails-for-zombies>
* <http://www.codeschool.com/courses/rails-for-zombies-2>
* [Agile Web Development With Rails](http://pragprog.com/book/rails4/agile-web-development-with-rails) (a book - this is how I learned)

If this tutorial doesn't work verbatim or you strongly suggest some other resources be listed, please comment below.

Happy learning!
