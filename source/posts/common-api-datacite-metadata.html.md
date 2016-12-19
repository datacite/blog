---
layout: post
title: A common API for retrieving DataCite Metadata
author: mfenner
date: 2016-11-03
tags:
- api
- search
doi: 10.5438/6WCF-EFW5
published: true
---
Today we are launching a new version of the DataCite API at [http://api.datacite.org](http://api.datacite.org). This new version includes numerous bug fixes and now includes related resources (e.g. data centers, members or contributors) according to the [JSONAPI spec](http://jsonapi.org/format/#fetching-includes). The changelog can be found [here](https://github.com/datacite/spinone/blob/master/CHANGELOG.md). Current users of the API should watch out for breaking changes in the `meta` object used for faceting.

We first launched the DataCite API in June as what we hope will become the new standard way to retrieve metadata from DataCite. Most of the content in the API comes from our search index of the MDS and is about DOI metadata, but we are also including information from other services, e.g. our member database and the [Event Data](https://blog.datacite.org/its-all-about-relations/) service. We ourselves use the API to power the web frontend for search, to [display member information](https://www.datacite.org/members.html) on our homepage, and to provide a search for our [blog](http://blog.datacite.org/).

Other ways to obtain DataCite metadata include [OAI-PMH](http://oai.datacite.org/) for harvesting large volumes of metadata, and direct access to the Solr search index. This direct public access to the Solr search index will be discontinued in 2017 for performance and security reasons, so we encourage all users to migrate to the DataCite API as soon as possible. We will be adding missing API functionality in the coming months, most importantly provide all available DOI metadata in the API and thus search web frontend. Please [contact us](mailto:tech@datacite.org) if you have suggestions or bug reports regarding the DataCite API.
