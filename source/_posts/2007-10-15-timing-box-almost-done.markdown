---
layout: post
title: "Almost Done"
date: 2007-10-15
comments: true
categories:
- Timing Box
---

A few days ago I finally got the chip. I ended up having to go to UPS to pick it up, something about they couldn.t leave it at my doorstep, Mouser required a signature. I dropped the chip into my breadboard and within seconds it was communicating perfectly with my laptop. It took me a while to figure out how to read a byte though. The chip has pins for write and read enable that are normally controlled by some form of clock, however for my application all I want to know is when a bit goes high. Looking through the programming manual for the chip I discovered a function FT_GetBitMode, which returns the instantaneous value of the data bus. So I wrote a thread that continuously calls this function and if it gets a response of zero then it will call my gate trigger function. Right now I.m having some trouble getting everything to run smoothly, most likely due to some threading issues. However, it works well enough that I can now go about figuring out how to house everything so it can be used at the track. I need to come up with some small rechargeable 12 volt batteries to power the gates, and a long length of wire to link the receptor gate to my USB interface.

I've made a few more functional changes to the user interface as well. Hopefully within the next week or so I can get everything together and call this project complete.

{% img center /images/timing-box/screenshot2.jpg %}


