---
layout: post
title: Upcoming Changes to DOI Content Negotiation
author:
  - mfenner
date: 2019-07-26T12:21:03.063Z
tags:
  - content negotiation
  - metadata
image: /images/uploads/feedback.png
doi: 10.5438/nz0m-rb06
---
DOI Content negotiation is one of the oldest DataCite services, launched in 2012. Content negotiation makes it easy to fetch DataCite metadata in other metadata formats, for example *BibTeX* or *schema.org*, or as formatted citation in one of more than 5,000 citation styles. For example:

```
curl -LH "Accept: application/x-bibtex" https://doi.org/10.5438/0000-0C2G
```

In 2017 we updated the service, both adding new content types (e.g. schema.org), and improving the support for existing content types [@https://doi.org/10.5438/0000-01qj].

In 2018 we launched a new version of the REST API [@https://doi.org/10.5438/s8rt-zv48] that complements content negotiation: you can now submit metadata in most of the metadata formats supported by content negotiation to register a DOI.

With this blog post we want to announce an important upcoming change to DataCite DOI content negotiation that addresses a long-standing issue. Content negotiation is used to provide different representations of the same resource in different formats. What content negotiation is not is a protocol to return the content itself described by the DOI instead of the metadata describing the content, e.g. a PDF or CSV file. The initial implementation of DataCite DOI content negotiation didn't make that clear distinction and allows registration of custom content types, including those that typically are associated with content rather than metadata, e.g. `application/pdf`. Registration of custom content types is still possible with the current version of the service, but we are today announcing that we will retire this functionality on January 1st, 2020.

We know that many organizations make heavy use of custom content types for DataCite DOIs, so we provide both a long transition period and alternative approaches to achieve the same.

On October 1st, 2019 we will retire support for custom content types via the DOI resolver `https://doi.org`. You can continue to use custom content types by using the DataCite content negotiation service at data.datacite.org directly, e.g.

```
curl -LH "Accept: application/x-bibtex" https://data.datacite.org/10.5438/0000-0C2G
```

Starting January 1st, 2020 custom content types will no longer be supported.

There are two alternatives to using custom content types in content negotiation:

* use the REST API, specifically the `/media` API endpoint to access exactly the information currently made available via content negotiation
* use content negotiation at the landing page for the resource that the DOI resolves to. DataCite content negotiation is forwarding all requests with unknown content types to the URL registered in the handle system.

Going forward, the upcoming changes will lead to improvements in two areas:

* the content negotiation service will become faster, easier to maintain, and more aligned with other DOI registration agencies such as Crossref. The new service is already running at https://data.crosscite.org.
* we can improve the workflows for registering URLs to content in the DOI registration service. This will enable direct access to content, and will improve machine access to data.

Please reach out to [DataCite support](mailto:support@datacite.org) if you need help transitioning from custom content types you have registered in the past.

## References
