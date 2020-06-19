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

### DOI registration services
In the MDC initiative we track data citations in the scholarly literature, focussing on datasets registered with DataCite and publications registered with Crossref.

### Event Data
We use the joint Crossref/DataCite Event Data service to exchange information about connections between publications and datasets, contributed via Crossref and DataCite members and the metadata they register. These connections are also made available to all other users via a Scholix-compliant REST API.

### Data Usage Reports
DataCite members and repositories upload monthly reports about data usage to DataCite using a standard format ([COUNTER Code of Practice for Research Data Usage Metrics](https://www.projectcounter.org/counter-code-practice-research-data-usage-metrics-release-1/) and protocol ([SUSHI](https://www.projectcounter.org/code-of-practice-sections/sushi/)).

### GraphQL API
The DataCite GraphQL API built in the EC-funded FREYA project brings together all the above information in a single API that supports the complex queries needed for retrieving data citation information.

### Jupyter Notebooks
We use Jupyter notebooks to analyze and visualize the information made available in the GraphQL API, and have developed documentation, demos and training material with our partners in the FREYA project.

### Common DOI Search
Common DOI Search, a service currently under development by DataCite with help from Crossref and others in the EC-funded FREYA project, will bring a single search interface for all scholarly DOIs, no matter from which DOI registration agency (DataCite, Crossref, etc.). All DOIs in Common DOI Search are in a single search cluster using the same DataCite metadata format.

### Data Metrics Badge
The Data Metrics Badge – developed as part of the Parsec project – is an easy to install Javascript widget that displays citations, views and downloads for a single DOI, and links to the DataCite Search page for more detailed information.

### 

