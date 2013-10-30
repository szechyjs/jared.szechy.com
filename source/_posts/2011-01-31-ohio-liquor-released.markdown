---
layout: post
title: "Ohio Liquor Released"
date: 2011-01-31
comments: true
categories:
- Android
- Ohio Liquor
---

{% img right /images/ohio-liquor/qr.png %}

I decided that the beta of Ohio Liquor needed a complete overhaul. The first issue was speed. The app downloaded and parsed the price list form the state whenever a new one was available. The parsing on the Android device itself was rather slow. I have now removed this parsing from the device and it now takes place on my servers. My servers check daily for updates to the price list, parse the list and creates a sqlite database available for download. The app then downloads this small file instead. This has significantly increased the speed of the app.

I have also given the GUI a complete redesign as well. The layout now more closely fits the recommended style Google advertised at the past Google I/O.

{% img center /images/ohio-liquor/screen21.png %}
