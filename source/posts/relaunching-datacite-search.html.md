---
layout: post
title: Relaunching DataCite Search
author: mfenner
date: '2016-07-05'
tags:
- infrastructure
image: https://blog.datacite.org/images/2016/07/search.png
doi: 10.5438/0000-0991
published: true
accession_number: MS-297-6575-8724
---
This week we relaunched [DataCite Search](https://search.datacite.org), providing a more user-friendly search interface for DataCite metadata. We also added functionality that was not available before.

The new search uses a single entry box for queries, and filters by resource type, publication year and data center. A new Cite button will generate a citation in several popular citation styles, and in BibTeX and RIS import formats. Users who sign in using their ORCID credentials can add works to their ORCID record using the DataCite Search and Link service, and will find a menu shortcut to a page with all DataCite DOIs associated with their ORCID ID.READMORE

![Search](/images/2016/07/search.png)

In addition to information about works, DataCite Search also allows queries for contributors, data centers, and members, and the works associated with them. Information from the [DataCite Event Data service](https://www.datacite.org/eventdata.html) is included in the search results where available, and can be specifically looked up via the **Services** tab.

![Data Citation Example](/images/2016/07/eventdata.png)

In contrast to the previous search user interface the new search is not using the Solr Search API directly, but rather the new DataCite API available at [https://api.datacite.org](https://api.datacite.org). This API uses the Solr Search API for metadata stored in the DataCite MDS, but also pulls in information from other services, including [Event Data](https://www.datacite.org/eventdata.html) and [Profiles](https://www.datacite.org/profiles.html) (the latter for information about members). Going forward we plan to add addition information to the DataCite API, e.g. from [re3data.org](http://www.re3data.org/).

The software that is providing the search frontend was originally written by Crossref and is also powering the [Crossref Metadata Search](http://search.crossref.org/). As all DataCite software the code is [available](https://github.com/crosscite/doi-metadata-search) as open source software.

The search has been running as Labs Search since last August and many users have provided valuable feedback. The old search user interface is still available at [https://search.datacite.org/ui](https://search.datacite.org/ui).
