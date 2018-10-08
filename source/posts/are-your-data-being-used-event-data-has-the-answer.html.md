---
layout: post
title: Are your data being used? Event Data has the answer!
author:
  - rdasler
  - hcousijn
date: 2018-10-08T06:23:06.366Z
tags:
  - featured
image: /images/uploads/system-2660914_640.jpg
doi: 10.5438/s6d3-k860
---
If you’ve gone through the effort of sharing your data, you’d like other people to find, view, download, and reuse your data. Sometimes the repository that holds your dataset will make that information available, but up to now there hasn’t really been a single system that provides views, downloads and citations for datasets across repositories.

As you may have read in previous blog posts, we’ve been involved in a number of initiatives to make connections between research outputs more explicit and easily accessible, whether that’s in the form of data citations, usage stats, and more. Within the [Make Data Count](https://makedatacount.org/) project, we worked on a COUNTER code of practice for research data \[@https://doi.org/10.5438/nb24-t773] that standardizes the ways in which views and downloads are counted. We also participate in [Scholix](http://scholix.org), a framework for exchanging information for the links between articles and datasets. And just last week, we announced that together with Crossref we’re embarking on a dedicated effort to get things moving and help researchers and research organizations to start doing data citation \[@https://doi.org/10.5438/vqjq-jb84].

In the coming months we’ll tell you more about how you can send us information about data usage stats and data citations, but today we want to tell you how we’re making this information available for you! 

## Introducing DataCite Event Data

For a while now, DataCite and Crossref have been working on a shared infrastructure that stores information about “events” that happen to DOIs outside of their own metadata. This can include when another persistently identified item is updated to include a relation to the DOI in question (such as can happen for data citations), or when mentions of the DOI are found in the wild (like when someone tweets about an article). And thanks to our recent work with Make Data Count, this can also include when an item in a data repository is viewed or downloaded. All of these things make up the various “events” that happen in the lifetime of a DOI. Crossref and DataCite have been working hard together to gather all of these events in one place, known as Event Data. 

DataCite and Crossref are each offering ways to tap into Event Data. Our friends at Crossref are getting set to bring their [Crossref Event Data Query API](https://www.eventdata.crossref.org/guide/index.html) out of beta, and we’ll leave them to tell their own story themselves. From DataCite’s side, we’re incorporating information from Event Data into our [REST API](https://support.datacite.org/docs/api) as part of our broader strategy to eventually consolidate access points \[@https://doi.org/10.5438/vj9e-sk62] for all DataCite-related functions. This means you’re now able to query the REST API for information about events around DOIs. Has an article cited your dataset? Now you’ll know! 

## The fine print

Insights are only ever as good as the data they’re based on. While we’re happy to make Event Data available to the broader community, data citation practices are not yet consistent, standardized, or tidy. Also, because the information in Event Data comes from a dynamic world of research, you should expect it to be similarly dynamic. This means that at this stage, what you can retrieve from Event Data may not quite match what you’re expecting, and it will naturally change over time. We’re hoping that if we all have the means to take a good look at what metadata is out there, that will also give us the means to have open and honest conversations about where data citation and scholarly communication needs to go and what work still needs to be done to make services like Event Data as robust and meaningful as possible. 

## Let’s get started

So what can you do with Event Data? As a publisher, you could use Event Data to surface the connections between your articles and related datasets. As a repository you could query Event Data via the DataCite REST API to show views, downloads, and citations for your datasets. Both of these require the necessary connections to be in Event Data, so now’s the time to get started depositing relations metadata and submitting usage reports. 

To begin using the information contained in Event Data via DataCite services, head on over to our [Event Data guide](https://support.datacite.org/docs/eventdata-guide). You can also take a look at our updated [REST API guide](https://support.datacite.org/docs/api) for the skinny on everything else you can do with the API, or you can read about submitting your repository usage reports via the [usage reports API](https://support.datacite.org/docs/usage-reports-api-guide). If you want to jump straight to the technical nitty gritty, check out the [API reference](https://support.datacite.org/reference). 

And as always, if you have questions or feedback about Event Data, or if you want some guidance about improving data citation practices at your institution, feel free to reach out to us at support@datacite.org. 

## References
