---
layout: post
title: >-
  Taking discoverability to the next level: datasets with DataCite DOIs can now
  be found through Google Dataset Search
author:
  - hcousijn
  - tcruse
  - mfenner
date: 2018-09-05T21:37:47.267Z
tags:
  - google
  - search
  - schema.org
  - featured
image: /images/uploads/bildschirmfoto-2018-09-05-um-23.41.05.png
doi: 10.5438/5aep-2n86
---
Discoverability of research data is a core component of the research data ecosystem. Making data findable has always been one of DataCite’s main goals, with [DataCite Search](https://search.datacite.org) providing a tool to search for all datasets with DataCite DOIs. 

Today the discoverability of datasets was taken to the next level with the launch of [Google Dataset Search](https://toolbox.google.com/datasetsearch). Google recognized the increasing importance of data and wants to make it easier for everyone, not just researchers, to find datasets. It is similar to Google Scholar in that datasets are included wherever the data lives. This large-scale effort means increased visibility for all data repositories and provides an extra push to make all research data openly available.

![](/images/uploads/bildschirmfoto-2018-09-05-um-23.41.05.png)

To be able to include datasets from diverse sources, Google developed [guidelines](https://developers.google.com/search/docs/data-types/dataset#source-provenance) for dataset providers to describe their data in a way that allows Google to index the metadata. These guidelines include standard metadata such as title, dataset creator, publication data, publisher, license, and description, and use [schema.org](https://schema.org), a widely used metadata standard co-developed by Google.

The schema.org metadata need to be embedded into the dataset landing page so that the Google indexer can find them, and the data repository needs to provide a [sitemaps](https://www.sitemaps.org/) file with the URLs of all dataset landing pages. By doing this the data repository not only can be indexed in Google Dataset Search, but also follows our community recommendations for embedding machine-readable metadata in landing pages. [@https://doi.org/10.1101/097196].

The number of data repositories embedding schema.org metadata in dataset landing pages is still low, see our latest survey from May (@https://doi.org/10.5281/zenodo.1263942). If a data repository doesn't provide schema.org metadata via the dataset landing page, the next best option is indexers that store metadata about the dataset. DataCite Search is such a place, and in early 2017 we started to embed schema.org metadata in DataCite Search pages for individual DOIs, and we generated a sitemaps file (or rather files) for the over 10 million DOIs we have. 

This allowed Google to collect metadata about these DOIs, even if the repository did not provide the metadata on its landing pages. As part of this work we had many conversations with Natasha Noy and Dan Brickley from Google, many data repositories implementing schema.org, and the broader schema.org community. DataCite was thrilled to be involved in discussions around the development of Google Dataset Search and to test previous versions. 

Google Dataset Search will greatly enhance discoverability of research datasets and we will continue to ensure that all relevant datasets with DataCite DOIs are included. Right now the focus is mainly on Social Sciences and Environmental Sciences, but the use of schema.org should make expansion to other disciplines straightforward. 

As Google also notes, a search engine is only as good as the metadata that go into it, so we want to encourage all DataCite members to continue to deposit complete metadata - that we then convert into schema.org format - to ensure your datasets can be found. Even better, embed schema.org metadata in your dataset landing pages. Should you have further questions, e.g. how to embed schema.org in your repository pages, do not hesitate to reach out to [mailto:support@datacite.org](support@datacite.org).

## References
