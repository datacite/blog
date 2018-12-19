---
layout: post
title: Introducing DataCite JSON
author:
  - mfenner
date: 2018-12-19T08:39:17.530Z
tags:
  - metadata
doi: 10.5438/1pca-1y05
---
All DataCite DOIs have associated metadata, described in the DataCite Metadata Schema Documentation, validated and stored as XML in the DataCite Metadata Store (MDS). These metadata are then made available via DataCite APIs and services. For these services XML is not always the best format, and we are thus providing the metadata in other formats, most notably JSON. The problem with our approach so far has been that this JSON was not properly defined, creating overhead and ambiguity both for our internal services, and for our users. To change this situation, and to make it easier to work with metadata for DataCite DOIs, we today are announcing **DataCite JSON**.

DataCite JSON represents all metadata elements and attributes available in DataCite XML, and can be converted from and to DataCite XML via several DataCite services (MDS API, EZ API, DOI Fabrica, Content Negotiation) that internally all use the bolognese metadata conversion library, which is also available as a command-line utility. Both our new Elasticsearch Search index and the new JSON REST API (more on those in another blog post) use DataCite JSON. The bolognese metadata conversion library uses DataCite JSON as the intermediary format, for example when converting BibTeX to schema.org JSON-LD or JATS XML.
