---
layout: post
title: The DataCite MDS Stack
author:
  - mfenner
  - kjgarza
date: '2020-06-19'
tags:
  - mdc
  - data citation
  - data usage
  - graphql
  - bibliometrics
  - react
---
In May we [announced](https://makedatacount.org/2020/05/05/igniting-change-our-next-steps/) that we have received additional funding from the Alfred P. Sloan Foundation for work on the Make Data Count (MDC) initiative. This will enable DataCite to do work in two important areas:

\* Implement a bibliometrics dashboard that enables bibliometricians – funded by a separate Sloan grant – to do quantitative studies around data usage and citation behaviors.

\* Increase adoption of standardized data usage across repositories by developing a log processing service that offloads much of the hard work from repositories.

In this blog post we want to provide more technical details about the upcoming work on the bibliometrics dashboard, the log processing service will be the topic of a future blog post.

The bibliometrics dashboard 

### DOI registration service
In the MDC initiative we track data citations in the scholarly literature, focussing on datasets registered with DataCite and publications registered with Crossref.

### Event Data
We use the joint Crossref/DataCite Event Data service to exchange information about connections between publications and datasets, contributed via Crossref and DataCite members and the metadata they register. These connections are also made available to all other users via a Scholix-compliant REST API.

### Data Usage Reports
DataCite members and repositories upload monthly reports about data usage to DataCite using a standard format (COUNTER Code of Practice for Research Data) and protocol (SUSHI).
