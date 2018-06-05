---
layout: post
title: It’s Time to Make Your Data Count!
author:
  - dlowenberg
  - abudden
  - tcruse
date: '2018-06-05'
tags:
  - data-level metrics
  - mdc
  - featured
image: https://blog.datacite.org/images/uploads/photo-1520246819288-8bcefb7ac966.jpeg
doi: 10.5438/pre3-2f25
---
One year into our Sloan funded Make Data Count project, we are proud to release Version 1 of standardized data usage and citation metrics!

As a community that values research data it is important for us to have a standard and fair way to compare metrics for data sharing. We know of and are involved in a variety of initiatives around data citation infrastructure and best practices; including Scholix, Crossref and DataCite Event Data. But, data usage metrics are tricky and before now there had not been a group focused on processes for evaluating and standardizing data usage. Last June, [members from the MDC team and COUNTER](https://makedatacount.org/2018/02/12/code-of-practice-for-research-data-usage-metrics-release-1/) began talking through what a recommended standard could look like for research data.

Since the development of our COUNTER Code of Practice for Research Data \[@https://doi.org/10.7287/peerj.preprints.26505v1] we have implemented comparable, standardized data usage and citation metrics at Dash (CDL) and DataONE, two project team repositories.

![](/images/uploads/screen-shot-2018-06-01-at-9-43-57-am.png)

![](/images/uploads/screen-shot-2018-06-05-at-6-33-12-am.png)

The repository pages above show how we Make Data Count:

* Views and Downloads: Internal logs are processed against the Code of Practice and send standard formatted usage logs to a [DataCite hub](https://api.datacite.org/events) for public use and eventually, aggregation.
* Citations: Citation information is pulled from Crossref Event Data.

The Make Data Count project team works in an agile “minimum viable product” methodology. This first release has focused on developing a standard recommendation, processing our logs against that Code of Practice to develop comparable data usage metrics, and display of both usage and citation metrics at the repository level. We know from work done in the prototype NSF funded Making Data Count project \[@https://doi.org/10.1038/sdata.2015.39] that the community value additional metrics. Hence future versions will include features such as:

* details about where the data are being accessed
* volume of data being accessed
* citation details
* social media activity

## We just released our first iteration of data-level metrics infrastructure, what next?

### 1) Get Repositories Involved

For this project to be effective and for us to compare and utilize data-level metrics we need as many repositories as possible to join the effort. This is an open call for every repository with research data to Make Data Count. A couple of important resources to do so:

* Check out our [How-To Guide](https://github.com/CDLUC3/Make-Data-Count/blob/master/getting-started.md) as described by the California Digital Library implementation of Make Data Count. Tips and tools (e.g. a Python Log Processor) are detailed in this guide and available on our public Github. Links in this guide also point to the DataCite documentation necessary for implementation.
* **Join our project team for a webinar on how to implement Make Data Count at your repository and learn more about the project on Tuesday, July 10th at 8am PST/11am EST. Webinar link:** <http://bit.ly/2xJEA4n>.

### 2) Build Advocacy for Data-Level Metrics

_Publishers_:

When implementing this infrastructure in our repositories we became aware of how few publishers are indexing data citations properly. Very few datasets are correctly receiving citation credit in articles. If you are a publisher or are interested in advocating for proper data citation practices, check out the [Scholix initiative](http://www.scholix.org/) and our [brief guide here](https://makedatacount.org/2018/05/29/publishers-make-your-data-citations-count/) as well as DataCite’s recent blog on the current state of data citations \[@https://doi.org/10.5438/h16y-3d72].

_Researchers & the research stakeholder community_:

For the academic research community to value research data we need to talk about data-level metrics. This is a call out to researchers to utilize data-level metrics as they would with articles, and for academic governance to value these metrics as they do with articles.

**With the first version of our data-level-metrics infrastructure released, we are excited to work as a community to further drive adoption of data metrics. For further updates, follow our twitter makedatacount.**

## References
