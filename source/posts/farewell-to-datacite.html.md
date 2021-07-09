---
layout: post
title: "Farewell to DataCite"
author:
  - mfenner
date: 2021-07-09
tags:
  - featured
doi: 10.5438/zx3k-3923
---

After six years as DataCite Technical Director, I am both sad and excited to announce that I will be leaving DataCite, beginning a new adventure as an independent developer for the [invenioRDM](https://inveniosoftware.org/products/rdm/) project on August 1st. My focus will remain on research data management, but with a different angle.

A lot has changed since 2015 at DataCite in general, and the DataCite technical architecture in particular. Rather than describe the work on DataCite infrastructure over the past six years in more detail, I want to provide a snapshot of where the DataCite infrastructure is with its core services, and what considerations the team is taking into account going forward.

### Content registration

DataCite members can register DOIs and metadata for content using the Metadata Store (MDS). The MDS API hasn’t changed much for users since 2012, although the technology powering the API has been replaced more than once, and the metadata schema is constantly evolving. We have added a JSON REST API and web frontend ([Fabrica](https://doi.datacite.org/)) starting in 2017. Going forward we hope to see more adoption of the JSON REST API, e.g. by finalizing and promoting the JSON schema. And we may want to explore other ways to register content, namely by embedding metadata in landing pages using schema.org in combination with sitemaps files.

### Discovery

In October 2020 DataCite launched [DataCite Commons](https://commons.datacite.org/) as a new discovery platform, followed by an announcement to retire DataCite Search by the end of 2021. DataCite Commons enables the discovery of connections between content, people, and organizations. DataCite Commons uses the existing DataCite backend infrastructure with relational databases and Elasticsearch in combination with a new [GraphQL](https://graphql.org/) API. Going forward we will see whether this approach scales appropriately, or whether a different technology is needed to power DataCite Commons. This would include the exploration of graph database technologies such as neo4j with or without GraphQL. Further, we will work to track the adoption of GraphQL and our REST API architecture.

### Backend services

DataCite as an infrastructure provider has always focussed on backend APIs and related services. As part of this work, DataCite has migrated to a Docker container-based cloud architecture. There is still work ahead, from migrating to [Kubernetes](https://kubernetes.io/) to service meshes and better monitoring and handling of service loads.

### Frontend services

The DataCite frontend service architecture has gradually evolved over the last six years, with the new services Fabrica and DataCite Commons using modern Javascript frameworks (Ember.js and Next.js, respectively). One side effect of this gradual evolution is a rather complex mix of technologies. Going forward, rewriting outdated services, and consolidating the various technologies are important goals. Combined with this could be the broader use of [serverless architectures](https://www.serverless.com/) which we started using in DataCite Commons.

### Looking ahead

DataCite is in a good position to handle our technology projects during this transition. I have been working closely with the DataCite team to transition responsibilities and will continue to be involved in community initiatives. Matt will publish a blog post next week that will cover the future team structure.
