---
layout: post
title: The DataCite MDC Stack
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
image: /images/uploads/noun_dashboard_2172952.png
---
In May we [announced](https://makedatacount.org/2020/05/05/igniting-change-our-next-steps/) that we have received additional funding from the Alfred P. Sloan Foundation for work on the Make Data Count (MDC) initiative. This will enable DataCite to do work in two important areas:

\* Implement a bibliometrics dashboard that enables bibliometricians – funded by a [separate Sloan grant](https://www.scholcommlab.ca/2020/05/04/sloan-announcement/) – to do quantitative studies around data usage and citation behaviors.

\* Increase adoption of standardized data usage across repositories by developing a log processing service that offloads much of the hard work from repositories.

In this blog post, we want to provide more technical details about the upcoming work on the bibliometrics dashboard, the log processing service will be the topic of a future blog post. The bibliometrics dashboard will be based on several important infrastructure pieces that DataCite has built over the past view years, and that are again briefly described below.

### DOI registration services

In the MDC initiative we track data citations in the scholarly literature, focussing on datasets registered with DataCite and publications registered with Crossref.

### Event Data

We use the joint [Crossref/DataCite Event Data](https://support.datacite.org/docs/eventdata-guide) service to exchange information about connections between publications and datasets, contributed via Crossref and DataCite members and the metadata they register. These connections are also made available via a [Scholix](http://www.scholix.org/)-compliant REST API. In the previous MDC project the Event Data service was expanded to include data usage stats and make retrieving information easier for DataCite members.

### Data Usage Reports

DataCite members and repositories upload monthly reports about data usage to DataCite using a standard format ([COUNTER Code of Practice for Research Data Usage Metrics](https://www.projectcounter.org/counter-code-practice-research-data-usage-metrics-release-1/) and protocol ([SUSHI](https://www.projectcounter.org/code-of-practice-sections/sushi/)). COUNTER Code of Practice for Research Data Usage Metrics and the DataCite [usage reports API](https://support.datacite.org/docs/usage-reports-api-guide) were developed in the previous MDC project.

### GraphQL API

The DataCite GraphQL API \[@https://doi.org/10.5438/yfck-mv39] built in the EC-funded [FREYA](https://www.project-freya.eu/en) project brings together all the above information in a single API that supports the complex queries typically needed for retrieving aggregated data citation information.

### Jupyter Notebooks

We use Jupyter notebooks to analyze and visualize the information made available in the GraphQL API \[@https://doi.org/10.5438/hwaw-xe52], and have developed documentation, demos, and training material with our partners in the FREYA project.

### Common DOI Search

Common DOI Search, a service currently under development by DataCite with help from Crossref and others in the FREYA project and with a first version planned to be released in August, will bring a single search interface for all scholarly DOIs, no matter from which DOI registration agency (DataCite, Crossref, etc.). All DOIs in Common DOI Search are in a single Elasticsearch search cluster using the same DataCite metadata schema.

### Data Metrics Badge

The Data Metrics Badge – developed as part of the [Parsec](http://www.belmontforum.org/projects/4057/) project – is an [easy to install ](https://support.datacite.org/docs/displaying-usage-and-citations-in-your-repository)Javascript widget that displays up-to-date citations, views, and downloads for a single DOI, and links to the DataCite Search page for more detailed information. 

![](/images/uploads/noun_dashboard_2172952.png)



### Researcher Profile

Also as part of the PARSEC project, we are developing tools that will allow researchers to assess all reuse of their datasets quickly. We have build the [Researcher Profile](https://support.datacite.org/docs/datacite-researcher-profiles) that, using ORCID, brings all your research datasets and their metrics into a single place. 



## Bibliometrics Dashboard

All the services described above are required building blocks for the bibliometrics dashboard we will start developing in August. What the dashboard will add is better insights into the data citation data we have collected, primarily helping the bibliometricians in the project, but also available to other users. We will use Jupyter notebooks for exploratory analyses and to address very specific research questions, and data visualizations in the bibliometrics dashboard that address the most common questions, such as the growth of data citations over time. 

The bibliometrics dashboard will expand the common DOI search service that we are currently building, beyond FREYA, which ends in November. Common DOI search, and also the bibliometrics dashboard, are built using [React](https://reactjs.org/), not only the most popular Javascript framework right now, but also integrating very nicely with GraphQL APIs. More specifically we are using [next.js](https://nextjs.org/) to run react on the server, helping with faster page loading and search engine optimization (SEO).

We have picked the popular [Vega](https://vega.github.io/vega/) library for our data visualizations. Vega is not only widely used and very flexible, but also available in versions for Jupyter notebooks ([Altair](https://altair-viz.github.io/getting_started/installation.html)) and React ([React-Vega](https://github.com/vega/react-vega)).
