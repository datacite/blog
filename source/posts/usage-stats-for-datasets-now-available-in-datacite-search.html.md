---
layout: post
title: 'Usage Stats for datasets: now available in DataCite Search'
author:
  - rdasler
date: 2019-04-17T14:51:29.365Z
tags:
  - featured
image: /images/uploads/usagestats.png
doi: 10.5438/eepd-3x92
---
Those of you attending the recent General Assembly might have heard us talk about how DataCite is at a crossroads. We’ve spent the last several years building and honing the infrastructure necessary to make it simple for institutions to create and manage DOIs for their data, and our members have created DOIs for a host of different research outputs. With this foundational infrastructure laid out, it’s now time to start working on services that will add greater value to our members and really harness the power of what interconnected research could mean. 

As an initial step along that path to greater DOI value, we’re working on a series of statistics-related updates that we’ll be making to [DataCite Search](https://search.datacite.org) over the next few months. Today we're rolling out the first of these updates by adding usage statistics to DOIs in DataCite Search. Starting now, you'll be able to see views and downloads for each of those DOIs for which a repository has submitted usage information. 

![Looking at usage statistics in DataCite Search results](/images/uploads/usagestats.png "Looking at usage statistics in DataCite Search results")

## What's "usage"?

When we say "usage", we're talking about indicators of use from the repository side. We're trying to show how many times a particular item has been viewed and/or downloaded from within the repository in which it resides. This information is recorded by the repositories themselves according to the [COUNTER Codes of Practice](https://www.projectcounter.org/) relevant for the types of items in the repository, and it is submitted to DataCite via our [Usage Reports API](https://support.datacite.org/docs/usage-reports-api-guide). 

For more details on how DataCite is counting views and downloads, see our guide to [Usage Stats in DataCite Search](https://support.datacite.org/docs/usage-stats). 

## I don't see usage for my repository. What do I do?

We're only showing usage for those repositories who have submitted usage reports to us in the appropriate format. Any DataCite member can participate, and there is no extra cost for submitting your usage reports to us. For details on how to submit, please see the [Usage Reports API Guide](https://support.datacite.org/docs/usage-reports-api-guide). 

## Is this information available via the API?

The usage information is also publicly available via the `/events` endpoint of the DataCite REST API, just like other relational events around DOIs that we collect through other sources. You can read more about querying for DOI events in our [Event Data Guide](https://support.datacite.org/docs/eventdata-guide).

## What's next?

These new usage statistics are part of the work on the [Make Data Count](https://makedatacount.org/) project that DataCite has been doing along with the California Digital Library and DataONE. As part of that project, we also looked at other indicators of a dataset's use and reach, such as citations and resolutions. Now that we've laid the groundwork for displaying statistics generally in DataCite Search, we're prepped to implement future updates around citation and resolution statistics as well. Stay tuned!
