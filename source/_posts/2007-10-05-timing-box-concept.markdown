---
layout: post
title: "Timing Box Concept"
date: 2007-10-05
comments: true
categories:
- Timing Box
---

As a member of my university's SAE Mini Baja team I decided we needed a better way to time our vehicle, the traditional stopwatch is a bit outdated. After attending an auto cross event this past weekend I thought why not build a timing gate system like they use to keep track of racer.s best times. I originally wanted to build a completely embedded system that does everything via a control box. I then decided that was too complicated and it didn.t leave a lot of room for improvements. I then decided that an interface that connected to a computer would be best, and have software handle the rest. So I started looking into what it would take to make such a device. I already had a set of infrared gates to make a timing gate out of. So all I had to figure out was how to connect those to a computer. Seeing as these gates would be used in remote areas the interface would need to work with a laptop, thus eliminating the use of Serial or Parallel ports. The solution would have to be USB. At work I.ve done a lot of work with FTDI products, so I looked into what they had to offer. Their FT245R chip seemed to fit my bill perfectly. It is a USB FIFO interface, which is essentially a Parallel port. With a parallel port you can essentialy have 8 I/O.s. The infrared reciever works like a binary switch so I essentialy just need one binary input for this interface. To make development easier I decided to use FTDI.s UM245R DIP module, so i don.t have to deal with surface mount chips and other components. I ordered this chip from Mouser earlier this week for $20.

{% img center http://www.ftdichip.com/Images/UM232R.jpg UM23R %}

I started programming the software interface in VB.NET 2005. So far the interface is pretty much complete. As of now it doesn.t interface with any hardware yet (although I have already programmed the functions to do so), I created some test buttons that emulate the trip of the infrared gate. The UM245R is supposed to show up on Monday, hopefully then I can get the breadboard out and finish up the software/hardware interface. Once I get the two talking to each other well the only thing left to do is tweak the software to my liking and start putting the timing box to use.
