---
layout: post
title:  Announcing the Organization Identifier Project
author: mfenner
tags:
 - organization identifier
 - orcid
 - crossref
---

One focus of our work at DataCite is to help link resources with a DataCite DOI to other resources: for example [new versions of the same dataset](https://blog.datacite.org/dynamic-data-citation-webinar/), [collections of related datasets](https://blog.datacite.org/to-better-understand-research-communication-we-need-a-groid-group-object-identifier/), or [articles citing the dataset](https://blog.datacite.org/location-of-the-citation/). Equally important is the support for linking these resources to the people and organizations who have contributed to their generation. We are working closely with ORCID to enable [linking between DataCite DOIs and ORCID IDs](https://blog.datacite.org/announcing-datacite-profiles-service/). In July we [relaunched our search](https://blog.datacite.org/relaunching-datacite-search/) to better show these relations between DataCite DOIs and other resources. And in September we launched an updated DataCite Metadata Schema [@http://doi.org/10.5438/0012] with better support for linking to funding information. Enabling all these relations are persistent identifiers, and metadata that describe these relations.

![The London Institution. Source: [Wikipedia](https://de.wikipedia.org/wiki/Datei:London_Institution_at_the_Finsbury_Circus.jpg)](/assets/images/2016/10/london_institute.jpg)

DataCite also supports the linking of resources to academic institutions in one of two ways: Using the **HostingInstitution** contributor role, or via the **affiliation** attribute for creators and contributors. One gap we identified when analyzing linking to organizations [@http://doi.org/10.5281/ZENODO.30799] last September is the lack of adoption of organizational identifiers. Without broad adoption of identifiers for organizations similar to how DataCite DOIs, Crossref DOIs and ORCID IDs are widely used in the scholarly community, it becomes very difficult to track these relations to institutions in a way similar to how we can track relations to people.

Based on this perceived need for an organizational identifier we in early 2016 started collaborating with ORCID and Crossref on exploring the current landscape of organization identifiers, and on how the three non-profit organizations providing persistent identifiers can work with the community to solve the organization identifier problem. Based on this collaboration, and on discussions with many stakeholders in the community, we developed three papers that we are releasing for public comment today:

* Organization Identifier Project: A Way Forward
* Current Organization Identifier Provider Landscape
* Technical Considerations for an Organization Identifier Registry

We invite the community for feedback either via [email](mailto:oi-project@orcid.org) or in person at the [PIDapalooza](http://pidapalooza.org) conference next week. Our goal is to move this initiative forward by forming a Community Working Group before the end of the year. This Working Group with develop a plan to launch an open, independent non-profit organization identifier registry for organization identifiers.

References
