---
layout: post
title: Upcoming Changes to DOI Content Negotiation
author:
  - mfenner
date: 2019-07-25T12:21:03.063Z
tags:
  - content negotiation
  - metadata
image: /images/uploads/feedback.png
---
DOI Content negotiation is one of the oldest DataCite services, launched in 2012. Content negotiation makes it easy to fetch DataCite metadata in other metadata formats, for example *BibTeX* or *schema.org*, or as formatted citation in one of more than 5,000 citation styles. For example:

```
curl -LH "Accept: application/x-bibtex" https://doi.org/10.5438/0000-0C2G
```

In 2017 we updated the service, both adding new content types (e.g. schema.org), and improving the support for existing content types [@https://doi.org/10.5438/0000-01qj].

In 2018 we launched a new version of the REST API [@https://doi.org/10.5438/s8rt-zv48] that complements content negotiation: you can now submit metadata in most of the metadata formats supported by content negotiation to register a DOI.

With this blog post we want to announce upcoming changes to DOI content negotiation 
