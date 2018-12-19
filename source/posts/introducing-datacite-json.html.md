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

There are minor differences between DataCite JSON and DataCite XML, mainly to make working with the metadata easier. This includes an **identifiers** object that combines the **identifier** and **relatedidentifier** properties, and a **types** object that not only stores **resourceTypeGeneral** and **resourceType** information, but also the type information from RIS, BibTeX, Citeproc and schema.org, to avoid loosing type information when converting between these formats. There is also a new **container** property that stores information about the repository or journal where the content is located. We can provide this information in DataCite XML via the relatedidentifier (with relationType **isPartOf**) and description (via descriptionType **SeriesInformation**) elements, but the process is cumbersome.

To see DataCite JSON 
