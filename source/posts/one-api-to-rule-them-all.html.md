---
layout: post
title: One API to rule them all
author:
  - mfenner
date: 2020-01-20T08:16:53.867Z
tags:
  - feature
  - api
image: /images/uploads/bildschirmfoto-2020-01-20-um-10.40.10.png
---
When we launched the new version of the OAI-PMH service in November (@https://doi.org/10.5438/ppth-pz62),  and retired Solr (used by the old OAI-PMH service) in December, we completed the transition to Elasticsearch as our search index, and the [REST API](https://api.datacite.org) as our main API. All our services now integrate via Elasticsearch and the REST API, including:

1. [MDS API](https://mds.datacite.org) - DOI registration API

1. [EZ API](https://ez.datacite.org) - DOI registration API, compatible with CDL EZID service

1. [Fabrica](https://doi.datacite.org) - DOI registration and account management web interface

1. [OAI-PMH](https://oai.datacite.org) - Metadata harvesting

1. [DataCite Search](https://search.datacite.org) - public DOI search

1. [Stats Portal](https://stats.datacite.org) - statistics about DOI registrations and resolutions

1. [Content Negotiation](https://data.datacite.org) - DOI metadata in other formats

This consolidation was a lot of work in 2019, but will greatly simplify the maintenance  of our services and the development of new functionality going forward. 

This consolidation of course also has its downsides, and the most important one is supporting both member services and public services via the same API. While DataCite will always make all DOI metadata available in a public API and search interface, we also have to make sure our paying members get the best possible service quality when registering DOIs or otherwise interacting with DataCite services as member.

To address this challenge we have in December launched two versions of the REST API, a **Public API** and a **Member API**. These two APIs use exactly the same URLs, run exactly the same code, and provide exactly the same public data, the only difference is that traffic is directed to a different set of servers if users authenticate as a member. This allows us to monitor the uptime and response time for DataCite member services separately from our public services, and adjust as needed. We updated the [DataCite status page](https://status.datacite.org) to reflect this change, you can now see separate metrics (both response time and request count) for the Public API and Member API:

![](/images/uploads/bildschirmfoto-2020-01-20-um-10.40.10.png)

With this approach we follow best practices, the difference to what our persistent identifier provider colleagues at Crossref and ORCID do is that we separate out the public and member API in the backend rather than using different services (member-only vs. public) or service endpoints (e.g. pub.orcid.org vs. api.orcid.org).

## References
