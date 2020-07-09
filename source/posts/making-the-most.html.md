---
layout: post
title: Making the most out of available Metadata
author:
  - mfenner
date: '2020-07-09'
tags:
  - featured
  - metadata
  - fair
  - discover
doi: 10.5438/1dgk-1m22
---
Metadata are essential for finding, accessing, and reusing scholarly content, i.e. to increase the FAIRness [@https://doi.org/10.1038/sdata.2016.18] of datasets and other scholarly resources. A rich and standardized metadata schema that is widely used is the first step, encouraging users to register these metadata (as many of these are optional and not required) is the second step, while infrastructure providers such as DataCite facilitating metadata registration and making the most of the available metadata is the third step. While we all have put considerable energy into the first two steps, I want to use this blog post to describe what DataCite is doing to improve metadata FAIRness via our services. I will focus on three important optional metadata properties and on two approaches: encouraging metadata registration in a standardized way using the new DOI form in our Fabrica service, and improving discovery via search filters in the next major release of DataCite Search, that we have started development work on.

### Language

DataCite metadata can include the primary language of the resource, using either the [BCP 47](https://tools.ietf.org/html/bcp47) (e.g. en-US) or [ISO 639-1](https://en.wikipedia.org/wiki/ISO_639-1) (e.g. en) controlled vocabularies. In the context of discovery, the ISO 639-1 code is most helpful, as we want to find resources we can understand because we speak the language, and not necessarily care about the nuances of for example U.S. English vs. British English. In Fabrica, the DOI form uses the list of languages in ISO 639-1, and that is also what we will use for filters in search.
