---
layout: post
title: Improving DataCite Search
author:
  - mfenner
date: 2019-01-07T16:20:48.240Z
tags:
  - search
  - metadata
image: ''
---

## Faster Indexing

Newly registered findable DOIs now appear in the DataCite Search index within a few minutes, compared to the up to 12 hours it took before. The same goes for updates of metadata, or DOIs removed from the public search index (by changing the DOI state from **findable** to **registered**. Faster indexing is particularly important when related content is published at the same time, e.g. a dataset with a DataCite DOI associated with a journal article with a Crossref DOI.

## Advanced DOI Search in DOI Fabrica

This faster indexing makes it possible for members and clients to use the Search index also in [DOI Fabrica](https://doi.datacite.org), enabling the same advanced search functionality available in DataCite Search, but also including DOIs in **draft** or **registered** state. This makes it much easier to manage DOIs and associated, e.g. by filtering for DOIs in draft state or finding DOIs using the outdated metadata schema 2.1 and 2.2.

![query for research data management](/images/uploads/bildschirmfoto-2019-01-05-um-17.30.20.png)

## Search for Everything

Our new search index for the first time covers all metadata and allows specific searches of every metadata field. For example **geoLocationPlace**:

![geoLocationPlace Cuba](/images/uploads/bildschirmfoto-2019-01-05-um-17.40.47.png)

## Solved the Deep Paging Problem

One important limitation of our previous search index, and a common issue with many search implementations, was the [deep paging problem](https://solr.pl/en/2011/07/18/deep-paging-problem/), making it hard to impossible to fetch a very large number of results. Our new search index supports cursor-based pagination that overcomes this problem, allowing users to for example harvest all DOI metadata from a particular member. This is done in the REST API, specifying a larger number of records per page – e.g. `https://api.datacite.org/providers/caltech/dois?page[size]=1000` – and the using the `links.next` provided in the API response.

## Implementation

The above changes were made possible by updating our search index service from an old version of Solr (4.0) to a recent version of Elasticsearch (6.3). While we could have updated Solr, we decided to switch to Elasticsearch, as it works better with our JSON-based workflow (see last blog post), and we can use a hosted service tightly integrated with the rest of our infrastructure, greatly reducing the support effort needed.

Not all DataCite services have been switched to the new search index, the Stats Portal and OAI-PMH service will be migrated within the next three months and continue to use the old Solr search index for now.

## Next

In the coming months we will focus on transitioning the remaining services from Solr to Elasticsearch, better documentation, improved performance, and we will fix any bugs we encounter. We will also work with our members to better understand what kind of queries they are most interested in, and how we can better support them in the search interface.

## References
