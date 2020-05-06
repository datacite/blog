---
layout: post
title: Announcing the DataCite GraphQL API powering the PID Graph
author:
  - mfenner
date: '2020-05-06'
tags:
  - freya
  - pid graph
  - featured
  - graphql
  - doi
  - ror
  - orcid
image: /images/uploads/pidgraph-2020-05-04.png
doi: 10.5438/yfck-mv39
---
DataCite today is launching a new API that powers the PID Graph, the graph formed by scholarly resources described by persistent identifiers (PIDs) and the connections between them. The API is powered by GraphQL, a widely adopted Open Source technology that enables queries of this graph, addressing use cases of our community in ways that were not possible before.READMORE

We launched a pre-release version of the API in May 2019 [@https://doi.org/10.5438/qab1-n315], and have used the last 12 months to improve the performance and stability of the service, add functionality based on user feedback, decide on a stable GraphQL schema that describes the resources and links in the Graph, and add many additional resources. The PID Graph now includes all of DataCite, nine million Crossref DOIs, all ORCID IDs, and all Research Organization Registry (ROR), Crossref Funder ID, and Registry of Research Data Repositories (re3data) records, for a total of about 35 million resources with PIDs and associated metadata, and about 9 million links between them. 

![Number of resources and links in the PID Graph.](/images/uploads/pidgraph-2020-05-04.png "Number of resources and links in the PID Graph available via GraphQL API as of May 4, 2020.")

PID Graph and the GraphQL API announced today are an important output from the European Commission-funded [FREYA Project](https://www.project-freya.eu/en), and have been developed in close collaboration of all FREYA partners, including the PID providers Crossref and ORCID. PID Graph is part of the Research Data Alliance (RDA) [Open Science Graphs for FAIR Interest Group](https://www.rd-alliance.org/groups/open-science-graphs-fair-data-ig), where we coordinate the work with other initiatives building Open Science graphs.

## References
