---
layout: post
title: Announcing Data-Level Metrics in DataCite Labs
author: mfenner
date: 2015-09-09
tags:
- data-level metrics
---
Last week Jennifer Lin shared information on the **Making Data Count** (MDC) project [on this blog](/when-counting-is-hard/). MDC is a project funded by the U.S. National Science Foundation (NSF) to design and develop metrics that track and measure data use – **data-level metrics** (DLM).

Funding for the 12 month project ends October 1st, with a no-cost extension until March 1st. MDC is a research project and has delivered some interesting questions and important results. One open question is whether and how to turn MDC research into a service that is not limited to the grant-funding period and possibly includes other datasets beyond those from the [DataONE repository network](https://www.dataone.org/current-member-nodes). These important decisions require analysis and feedback from the broader community.

In order to better understand and analyze these questions DataCite has taken over hosting of the DLM service from PLOS and will provide this service until at least March 1st, when the MDC funding formally ends. The DLM service is now hosted by DataCite Labs and can be found at [http://dlm.labs.datacite.org](http://dlm.labs.datacite.org). The following chart (directly from [http://dlm.labs.datacite.org/sources](http://dlm.labs.datacite.org/sources)) gives an overview about the data we have collected so far:

![](/images/2015/09/Bildschirmfoto-2015-09-09-um-17-02-56.png)

DLM is primarily an API for metrics, with documentation found at [http://dlm.labs.datacite.org/docs/sources](http://dlm.labs.datacite.org/docs/sources), and live API documentation at [http://dlm.labs.datacite.org/api](http://dlm.labs.datacite.org/api). API clients in [R](https://github.com/ropensci/alm), [Python](https://github.com/lagotto/pyalm) and [Ruby](https://github.com/lagotto/lagotto-rb) exist, and there is [example code](https://github.com/lagotto/almviz) in Javascript. A [discussion](http://discuss.lagotto.io) forum helps with questions regarding the API or clients.

Most users will not be using the API directly, but rather want to see the metrics data displayed together with the datasets they are interested in. About half of the about 140,000 datasets in the DLM service use DataCite DOIs and, as a first step, we have integrated DataCite DOIs into [Labs Search](http://search.labs.datacite.org). If your search results include datasets from one of the DataONE data centers that use DOIs (including Long Term Ecological Research Network, National Center for Ecological Analysis and Synthesis and Dryad Digital Repository) and we have found links for them (e.g. for [10.5061/dryad.f1cb2](http://search.labs.datacite.org/?q=10.5061%2Fdryad.f1cb2)), we will display them:

![](/images/2015/09/Bildschirmfoto-2015-09-09-um-17-18-36.png)

Let's dig into the Dryad example a bit more -- every Dryad data package is associated with a journal article (or other textual output) and the metadata deposited in DataCite links to that particular article. Dryad has provided `Is referenced by` for this relationship:

![](/images/2015/09/Bildschirmfoto-2015-09-09-um-17-21-42.png)

When you click on the `Is Cited By` link you will find 6 citations, all of which are different from the article in the `Is referenced by` link.

We included the names of the data sources (e.g. Europe PMC, PLOS, etc.) to distinguish DataCite metadata from external data pulled in from DLM. We are not currently deduplicating  links if they are found in different sources - in this case two citations where found both via PLOS fulltext search and via Europe PMC API:

![](/images/2015/09/Bildschirmfoto-2015-09-09-um-17-21-21.png)

Although citations in the scholarly literature are the most interesting links the DLM service can discover, DLM also searches other data sources such as the bookmarking service [CiteULike](http://citeulike.org), the [ORCID](http://orcid.org) registry of personal author identifiers, and Wikipedia (in this case for [10.5061/DRYAD.868SM](http://search.labs.datacite.org/?q=10.5061/DRYAD.868SM]):

![](/images/2015/09/Bildschirmfoto-2015-09-09-um-17-33-21.png)

We hope you find this information useful when you use [Labs Search](http://search.labs.datacite.org), but there still remains a lot of work to do, including:

* display numerical data, e.g. download counts or Mendeley readers,
* integrate the DLM data into the search index, so that we can use the data for filtering and sorting, e.g. *show me all datasets from data center x that have been cited at least 3 times*),
* harmonize the use of `relationType`, e.g. be consistent with `Is referenced By` vs. `Is cited By`,
* display more information rather than only links (DLM stores at least title, authors and publication date for all links),
* potentially show citations for the corresponding journal article if the data were published together with the article (as in the Dryad case above) - DLM is collecting this information, and
* learn from the community about the utility of a DLM service.

As always with DataCite Labs projects, your feedback is greatly appreciated.
