---
layout: post
title: Announcing the new Member API
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
2. [EZ API](https://ez.datacite.org) - DOI registration API, compatible with CDL EZID service
3. [Fabrica](https://doi.datacite.org) - DOI registration and account management web interface
4. [OAI-PMH](https://oai.datacite.org) - Metadata harvesting
5. [DataCite Search](https://search.datacite.org) - public DOI search
6. [Stats Portal](https://stats.datacite.org) - statistics about DOI registrations and resolutions
7. [Content Negotiation](https://data.datacite.org) - DOI metadata in other formats

This consolidation was a lot of work in 2019, but will greatly simplify the maintenance  of our services and the development of new functionality going forward. 

This consolidation of course also has its downsides, and the most important one is supporting both member services and public services via the same API. While DataCite will always make all DOI metadata available in a public API and search interface, we also have to make sure our paying members get the best possible service quality when registering DOIs or otherwise interacting with DataCite services as member.

To address this challenge we have in December split the REST API into two versions: a **Public API** and a **Member API**. These two APIs use exactly the same URLs (starting with https://api.datacite.org), run exactly the same code, and provide exactly the same public data, the only difference being that traffic is directed to a different set of servers if users authenticate as a member. This change is subtle enough that you probably have not noticed the difference yet. 

The launch of separate **Public** and **Member** APIs allows us to monitor the uptime and response time for DataCite member services separately from our public services, and adjust as needed. We updated the [DataCite status page](https://status.datacite.org) to reflect this change, you can now see separate metrics (both response time and request count) for the Public API and Member API:

![](/images/uploads/bildschirmfoto-2020-01-20-um-10.40.10.png)

There are of course other approaches to separate out member API calls from public API calls, including separate API endpoints, e.g. pub.orcid.org vs. api.orcid.org at ORCID, or separate APIs for members and non-members, e.g. the separate DOI registration API at Crossref. But we feel that our approach for accessing the member vs. public API aligns best with our strategy of offering a consolidated REST API for all services.

## References
