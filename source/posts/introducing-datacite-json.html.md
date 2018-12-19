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
All DataCite DOIs have associated metadata, described in the DataCite Metadata Schema Documentation (@https://doi.org/10.5438/0014), validated and stored as XML in the DataCite Metadata Store (MDS). These metadata are then made available via DataCite APIs and services. For these services XML is not always the best format, and we are thus providing the metadata in other formats, most notably JSON. The problem with our approach so far has been that this JSON was not properly defined, creating overhead and ambiguity both for our internal services and for our users. To change this situation, and to make it easier to work with metadata for DataCite DOIs, we today are announcing **DataCite JSON**.

DataCite JSON represents all metadata elements and attributes available in DataCite XML, and can be converted from and to DataCite XML via several DataCite services (MDS API, EZ API, DOI Fabrica, Content Negotiation) that internally all use the bolognese metadata conversion library (https://doi.org/10.5438/n138-z3mk), which also provides a command-line utility. Both our new Elasticsearch Search index and the updated JSON REST API (more on those in another blog post) use DataCite JSON. The bolognese metadata conversion library uses DataCite JSON as the intermediary format, for example when converting BibTeX to schema.org JSON-LD or JATS XML.

There are minor differences between DataCite JSON and DataCite XML, mainly to make working with the metadata easier. This includes an **identifiers** object that combines the **identifier** and **relatedidentifier** properties, and a **types** object that not only stores **resourceTypeGeneral** and **resourceType** information, but also the type information from RIS, BibTeX, Citeproc and schema.org, to avoid loosing type information when converting between these formats. There is also a new **container** property that stores information about the repository or journal where the content is located. We can provide this information in DataCite XML via the relatedidentifier (with relationType **isPartOf**) and description (via descriptionType **SeriesInformation**) elements, but the process is cumbersome. DataCite JSON also includes information not available in DataCite XML, including the url registered for the DOI, and the date the DOI was registered.

To see DataCite JSON in action, lookup the DOI metadata of your favorite DOI in our JSON REST API, e.g. [https://api.datacite.org/dois/10.5438/0014](https://api.datacite.org/dois/10.5438/0014). Alternatively install bolognese (via `gem install bolognese`) and fetch metadata via the command `bolognese 10.5438/0014 -t datacite_json`. Documentation of DataCite JSON is unfortunately still sparse, in early 2019 we will provide better documentation via our [support site](https://support.datacite.org), and this will also include updated documentation of the JSON REST API and a JSON Schema to validate the metadata, aligned with our XSD Schema for DataCite XML. 

We hope that DataCite JSON makes it easier to work with DataCite metadata, helping to improve metadata quality and re-use. We encourage users to adapt their tools to take advantage of DataCite JSON, and to consider DataCite JSON also when working with metadata not associated with a DataCite DOI, but when a description of scholarly resources with standard metadata and using JSON is needed. Watch out for more information about DataCite JSON in 2019, or reach out to us with questions or feedback via [support@datacite.org](mailto:support@datacite.org).

## References
