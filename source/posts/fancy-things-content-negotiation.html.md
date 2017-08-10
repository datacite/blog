---
layout: post
title: Fancy things you could build using content negotiation
author: lrueda
date: '2017-05-17'
tags:
- doi
- content negotiation
accession_number: MS-4444444444
doi: 10.5438/44eh-nrw4
---
As our Technical Director Martin Fenner [shared a few days ago](https://blog.datacite.org/content-negotiation-update/), our new Content Resolver service is an ideal interface and information source to build integrations. Today, we want to share with you a few potential (and fancy!) integrations one could build using content negotiation and DOI metadata.

### Format your references

You have probably seen [DataCite’s Citation Formatter](http://citation.crosscite.org) or the export functionality of [DataCite Search](https://search.datacite.org). Both of these services build citations automatically for a given DOI. You can integrate a similar widget directly into your local environment. With so many choices out there, this simple tool is a great way export and manage references and to take to promote best data citation practices.

![Format your references](/images/2017/05/cn01.png)

### Retrieve related content

Have you noticed how Flickr, Spotify, or even Amazon suggest related content? Imagine if you had an image repository and you could do just the same -- retrieve related images, display their thumbnails and link back to their original source, from anywhere. It sounds complicated, but it is actually as simple as searching for your keywords and retrieving an image format of the first results. This is content negotiation in action.

![Retrieve related content](/images/2017/05/cn02.png)

### Build your own tools

What about an automatic system to download resources given a reference list? Or to explore all the audiovisual content about a given topic and build playlist? The opportunities to innovate are endless!

![Build your own tools](/images/2017/05/cn03.png)

### Link to custom metadata

DataCite DOIs point to all sorts of research outputs and, of course, it is very different to describe a biological sample, a painting in a museum or a piece of software.  Our Metadata Schema supports extended and specific metadata through one of its relation types. Through content negotiation, it is possible to make available and retrieve all those details!

![Link to custom metadata](/images/2017/05/cn04.png)

These are only a few ideas. You can find many implementations already in the wild: on [data discoverability](http://www.ch.imperial.ac.uk/rzepa/blog/?p=13203), [reference management](https://www.zotero.org) or [linked data](https://wiki.duraspace.org/display/DSDOC6x/Linked+%28Open%29+Data), for example.

Do you have other good examples? [Get back to us](mailto:support@datacite.org), we would love to share them with the community!
