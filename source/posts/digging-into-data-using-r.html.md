---
layout: post
title: Digging into Metadata using R
author: mfenner
date: '2015-08-20'
tags:
- metadata
- orcid
doi: 10.5438/0000-00GG
published: true
accession_number: MS-16-7274-3436
---
In the first post of this new blog a few weeks ago I talked about [Data-Driven Development](/data-driven-development/), and that service monitoring is an important aspect of this. The main service DataCite is providing is registration of digital object identifiers (DOIs) for scholarly content, in particular research data.READMORE

Monitoring this service should include the following:

1. number of DOIs registered
1. metadata associated with these DOIs
1. are the DOIs working as expected, e.g. are they resolving to the appropriate landing page
1. are these DOIs actually used, based on number of downloads, citations, etc. of the resources they are describing

We can use the DataCite Search API to address #1 and #2. The [DataCite Statistics Portal](http://stats.datacite.org/) uses the API and is an excellent starting point for #1, showing the number of DOIs registered broken down by allocator and data center.

To get more detailed information about #1, and to look into #2, we can use the statistical programming language [R](https://www.r-project.org/) and the [rdatacite](https://github.com/ropensci/rdatacite) package by Scott Chamberlain from the [rOpenSci](https://ropensci.org/) to talk to the DataCite API. I have started to work on this and have created the public repository [metadata-reports](https://github.com/datacite/metadata-reports) on Github for this purpose. The first two reports are

* [overview](https://github.com/datacite/metadata-reports/blob/master/overview/index.md): number of registered DOI names
* [orcid](https://github.com/datacite/metadata-reports/blob/master/orcid/index.md): DOI names with ORCIDs in the metadata

In the overview report I look at the number of DOI names registered over time, with some examples where these numbers are broken down by data center and resource type. Below are two examples for data packages from **Dryad** and software from **Zenodo**:

![Dryad data packages by month](/images/2015/08/unnamed-chunk-10-1.png)

![Zenodo resources of type software created by month](/images/2015/08/unnamed-chunk-12-1.png)

In the orcid report I look at the number of DOI names that have at least one Open Researcher and Contributor ID (ORCID) in the metadata.

![DataCite DOI names with ORCID IDs by month](/images/2015/08/unnamed-chunk-3-1.png)

The report goes in more detail explaining the two peaks, basically two small group of researchers producing a large number of data sets (at Pangaea and Imperial College, respectively), and including their ORCID identifiers will all of them.

Removing these two groups of researchers shows a more organic pattern, with about 500 DOIs with associated ORCIDs created every month.

![DOI names with ORCID IDs filtered](/images/2015/08/unnamed-chunk-11-1.png)

R is a nice reporting tool for these kinds of data, and the [rdatacite](https://github.com/ropensci/rdatacite), [rmarkdown](http://rmarkdown.rstudio.com/) and [knitr](http://yihui.name/knitr/) packages make the analysis and visualization a straightforward process. Feel free to adapt the code in the Github repository to your specific questions, or let me know what other reports you would like to see.
