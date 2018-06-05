---
layout: post
title: It’s Time to Make Your Data Count!
author:
  - tcruse
date: '2018-06-05'
---
One year into our Sloan funded Make Data Count project, we are proud to release Version 1 of standardized data usage and citation metrics!

As a community that values research data it is important for us to have a standard and fair way to compare metrics for data sharing. We know of and are involved in a variety of initiatives around data citation infrastructure and best practices; including Scholix, Crossref and DataCite Event Data. But, data usage metrics are tricky and before now there had not been a group focused on processes for evaluating and standardizing data usage. Last June, [members from the MDC team and COUNTER](https://makedatacount.org/2018/02/12/code-of-practice-for-research-data-usage-metrics-release-1/) began talking through what a recommended standard could look like for research data.

Since the development of our COUNTER Code of Practice for Research Data [@https://doi.org/10.7287/peerj.preprints.26505v1] we have implemented comparable, standardized data usage and citation metrics at Dash (CDL) and DataONE, two project team repositories.

The repository pages above show how we Make Data Count:

* Views and Downloads: Internal logs are processed against the Code of Practice and send standard formatted usage logs to a DataCite hub for public use and eventually, aggregation.
* Citations: Citation information is pulled from Crossref Event Data.

The Make Data Count project team works in an agile “minimum viable product” methodology. This first release has focused on developing a standard recommendation, processing our logs against that Code of Practice to develop comparable data usage metrics, and display of both usage and citation metrics at the repository level. We know from work done in the prototype NSF funded Making Data Count project [@https://doi.org/10.1038/sdata.2015.39] that the community value additional metrics. Hence future versions will include features such as:

* details about where the data are being accessed
* volume of data being accessed
* citation details
* social media activity
