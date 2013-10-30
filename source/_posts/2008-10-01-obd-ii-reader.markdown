---
layout: post
title: "OBD-II Reader"
date: 2008-10-01
comments: true
categories:
- OBD-II
---

Inspired by [Alex’s PIC based OBD-II reader](http://www.obddiag.net/projects.html) I decided I needed another project. Since I had just bought a new car back in July I needed a reader that supports the new CAN protocols. I then had to go searching for an alternative device. I then found the [ELM327](http://www.elmelectronics.com/obdic.html#ELM327) by ELM Electronics. ELM provided a [schematic](http://www.elmelectronics.com/ELM327/Schematic.pdf) and [board](http://www.elmelectronics.com/ELM327/FoilPattern.pdf) layout to support their chip. After ordering up a few of their chips it was on to making the pcb’s. After printing the pcb out on the laser printer and ironing it onto the copper, it was then etched with muriatic acid. The boards came out very nice, a few broken traces, but easily fixed with some solder. Then after about a hour at the drill press it was then time to start soldering up the components.

{% img center /images/obd2/obd2-pcb.jpg 300 200 %}

It took about 45 minutes to solder all the components up.  For being my first pcb that I made from scratch, I was rather satisfied with the final result.

{% img center /images/obd2/obd2-solder.jpg 300 300 %}

{% img center /images/obd2/obd2-populated.jpg 300 200 %}
