---
layout: post
title: DataCite's New Search
author:
  - mfenner
date: 2019-01-07
tags:
  - search
  - metadata
  - fabrica
image: /images/uploads/bildschirmfoto-2019-01-05-um-17.30.20.png
doi: 10.5438/vyd9-ty64
---
Today we are announcing our first new functionality of 2019, a much improved search for DataCite DOIs and metadata. While the [DataCite Search](https://search.datacite.org) user interface has not changed, changes under the hood bring many important improvements and are our biggest changes to search since 2012.READMORE


## Faster Indexing

Newly registered (and tagged findable) DOIs now appear in the DataCite Search index within a few minutes, compared with the previous up to 12 hour lag. The same is true for metadata updates or DOIs removed from the public search index (by changing the DOI state from **findable** to **registered**). Faster indexing is particularly important when related content is published at the same time, e.g. a dataset with a DataCite DOI associated with a journal article with a Crossref DOI.

## Advanced DOI Search in DOI Fabrica

This faster indexing makes it possible for members and clients to use the Search index also in [DOI Fabrica](https://doi.datacite.org), enabling the same advanced search functionality available in DataCite Search, but also including DOIs in **draft** or **registered** state. Our Solr search index could not be used in DOI Fabrica, as users would not see newly created or updated DOIs because of the indexing delay. This makes it much easier to manage DOIs and associated metadata, e.g. by filtering for DOIs in draft state or finding DOIs using the retired metadata schemata 2.1 and 2.2. And it is the first time that we provide DOI registration and search in a single user interface; this kind of simplification is one of our themes for 2019 \[@https://doi.org/10.5438/bckb-qy95].

![Query for research data management](/images/uploads/bildschirmfoto-2019-01-05-um-17.30.20.png)

## Search for Everything

Our new search index covers all metadata and allows specific searches of every metadata field. For example **geoLocationPlace**:

![Search for geoLocationPlace Cuba](/images/uploads/bildschirmfoto-2019-01-05-um-17.40.47.png)

The supported search syntax is very similar to what was available before, and uses the [Elasticsearch Query String Syntax](https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl-query-string-query.html#query-string-syntax). You can for example specify field names, use wildcards, regular expressions, ranges, and boolean operators, e.g. use `creators.affiliation:stanford +creators.affiliation:ucsf` to find the 174 DOIs with collaborators from both of these two institutions.

## It Solves the Deep Paging Problem

One important limitation of our previous search index, and a common issue with many search implementations, was the [deep paging problem](https://solr.pl/en/2011/07/18/deep-paging-problem/), making it hard if not impossible to fetch a very large number of results. Our new search index supports cursor-based pagination that overcomes this problem, allowing users to, for example, harvest all DOI metadata from a particular member. This is done in the REST API, specifying a larger number of records per page – e.g. `https://api.datacite.org/providers/caltech/dois?page[size]=1000` – and the using the URL provided via `links.next` in the API response for the next query.

## Implementation

The above changes were made possible by updating our search index service from an old version of Solr (4.0) to a recent version of Elasticsearch (6.3). We switched to Elasticsearch, as it works better with our new JSON-based workflow – see our December blog post about JSON \[@https://doi.org/10.5438/1pca-1y05] – and we can use a [hosted service](https://aws.amazon.com/elasticsearch-service/) tightly integrated with the rest of our infrastructure thereby reducing the support effort needed.

## Next

Not all DataCite services have been switched to the new search index, the [Stats Portal](https://stats.datacite.org) and [OAI-PMH](https://oai.datacite.org) service will be migrated within the next three months and continue to use the old Solr search index for now.

In the coming weeks and months we will also provide better documentation, and improve performance and fix any bugs we encounter. We will also work with our members to better understand what kind of queries they are most interested in, and how we can better support these queries in the search interface.

## References
