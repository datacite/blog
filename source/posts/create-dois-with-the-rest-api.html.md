---
layout: post
title: Create DOIs with the REST API
author:
  - rdasler
date: 2018-09-28T16:42:34.079Z
tags:
  - featured
image: /images/uploads/reading_hammock.png
doi: 10.5438/s8rt-zv48
---
In last month's overview of our [current API landscape](https://doi.org/10.5438/vj9e-sk62), we introduced the idea of our consolidated REST API, the one place to go to use all DataCite services. As part of this grand consolidation, we're pleased to say that DOI creation is now available as part of the REST API. We're calling on all interested early adopters who want to try it out to [drop us a line](mailto:support@datacite.org).


## Wait. Didn't you already have a REST API?


Yes, we did. You've already been able to use the REST API for all your metadata-fetching needs for [about two years now](https://doi.org/10.5438/6wcf-efw5). Those functions are still available, and they still require no authentication to dig into the publicly available DataCite DOI metadata. 

What we've now added is the ability to also use the REST API for your DOI creation tasks. DataCite members will now be able to use the same REST API endpoint (https://api.datacite.org), along with their existing credentials, to create and manage their DOIs. Providers are also able to manage prefixes and Clients via the REST API. 

## So why should I switch? 


In the future, the REST API will be the single place to access DataCite services. As we add additional features and services, you'll be able to access them via the REST API. Eventually, both the EZ API and the MDS API will be phased out, but that won't be for several more years. 

The REST API also offers advantages from a technical perspective. In addition to being able to use just one API for everything (both fetching and creating), you can also create, update, and retrieve DOI metadata using JSON, since the REST API follows the [JSONAPI](http://jsonapi.org/) specification. This will make working with the DataCite APIs much easier.

## Do I have to switch? 


No, you don't have to switch to the REST API for DOI creation right now. You may continue to use whichever other DataCite API you're already using. You will eventually need to switch to the REST API, but again, we're talking in a few years' time. We know that API transitions take a lot of resources, so we'll continue to support both the EZ API and the MDS API for quite a while.

However, we want to encourage enthusiastic early adopters to put DOI creation in the REST API through its paces and let us know what tweaks it needs. We’re especially interested to hear from platform integrators as part of our first target audience for the new API. 

## Sounds great! Where do I sign up? 

Those interested in jumping on board the REST API train right away can take a look at our updated [REST API Guide](https://support.datacite.org/docs/api) for a walkthrough and examples and our updated [API Reference](https://support.datacite.org/v1.1/reference) for the technical nitty gritty. 

If you need any help, you can as always feel free to [contact us](mailto:support@datacite.org)
