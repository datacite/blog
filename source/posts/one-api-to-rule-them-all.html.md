---
layout: post
title: One API to rule them all
author:
  - mfenner
date: 2020-01-20T08:16:53.867Z
tags:
  - feature
  - api
---
When we launched the new version of the OAI-PMH service in November (@https://doi.org/10.5438/ppth-pz62),  and retired Solr (used by the old OAI-PMH service) in December, we completed the transition to Elasticsearch as our search index, and the REST API as our main API. All our services now integrate via Elasticsearch and the REST API, including:

1. [MDS API](https://mds.datacite.org) - DOI registration API

1. [EZ API](https://ez.datacite.org) - DOI registration API, compatible with CDL EZID service

1. [Fabrica](https://doi.datacite.org) - DOI registration and account management web interface

1. [OAI-PMH](https://oai.datacite.org) - Metadata harvesting

1. [DataCite Search](https://search.datacite.org) - public DOI search

1. [Stats Portal](https://stats.datacite.org) - statistics about DOI registrations and resolutions

1. [Content Negotiation](https://data.datacite.org) - DOI metadata in other formats
