---
layout: post
title: "First Atom package"
date: 2014-03-08 00:39:32 -0500
comments: true
categories:
- Atom
---

After receiving my beta invite to Atom I quickly started evaluating how well it
could replace Sublime Text as my default text editor. I tested it with all
kinds of projects and was quite amazed at how well it worked. However, once I
opened an arduino project I quickly noticed the lack of support for syntax
highlighting the arduino filetypes. I searched the available public packages
and came up empty handed. My first approach to solve this problem was editing
the language-c package that ships with Atom and adding the arduino filetypes to
it. I really didn't like this implementation though as it didn't allow the
flexibility of adding snippets and other options that should only apply to
arduino files. I quickly concluded that creating a new package would be the
best route to take.

<!-- more -->

The Atom editor is very friendly when it comes to developing packages to extend
its functionality. From the menu bar I simply clicked the Generate Atom Package
option and a brand new package was generated and opened in a new editor. Thanks
to the help of a Github staff member I was quickly pointed in the right
direction on how to simply extend the already included language-c package in my
new package. I was able to complete my primary goal for this package in roughly
seven lines of cson (coffee-script json).

``` coffeescript grammars/arduino.cson
'fileTypes': [
  'ino'
  'pde'
]
'name': 'Arduino'
'scopeName': 'source.arduino'
'patterns': [
  {
      'include': 'source.c++'
  }
]
```

The key line is `'include': 'source.c++'`, this tells the package to use all of
the c++ grammar. After saving this file I simply ran the command
`apm publish 0.1.0` from the package directory and the version was automatically
tagged and published to the packages site.

I then went and added a bunch of snippets to the package. I won't document that
process here as the
[offical documentation](https://atom.io/docs/v0.64.0/creating-a-package#snippets)
already documents it pretty well.

{% img /images/screens/atom-arduino.png %}


[language-arduino](https://atom.io/packages/language-arduino) on Atom.io
