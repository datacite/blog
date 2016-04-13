---
layout: post
title: Its all about Relations
tags:
 - metadata
 - data-level metrics
 - crossref
---

It is all about Relations

Metadata are one of the most important parts of the DOI registration service that DataCite provides. These metadata are defined in the DataCite Metadata Schema [@http://doi.org/10.5438/0010] and not only describe the information required for a citation and other relevant details, but also link to related resources in a standardized way. Related resources can be previous versions of the same work, other useful research outputs, cited or linked in different ways, and the people and organizations responsible for creating the resource.

Although the DataCite metadata are a rich source of information, there are two important issues:

1. The metadata focus on a resource described by the DOI. Although it is possible to link
   related resources and contributors via persistent identifiers, DataCite doesn’t store an aggregated view of this information, e.g. show all DataCite DOIs linked to a particular Crossref DOI or ORCID identifier.
2. Only the organization publishing the DOI can update the metadata. It is important to have a
   single authoritative source, but other organizations might also want to provide information about the resource, for example, data citations.

To be able to explore all these connections, DataCite needs a service to enhance its DataCite Metadata Store (MDS). This allows DataCite and other organizations to provide details about different types of resources linked to DataCite DOIs, aggregate this information, and display it as well as its provenance.

The new service is called DataCite Event Data and the software powering the service is called [Lagotto](http://www.lagotto.io/), open source software originally developed in 2009 by the Open Access publisher Public Library of Science (PLOS). While Lagotto provides the basic functionality needed for the Event Data service, significant development effort was required to enable the full functionality described above. This work was done, and will continue, in close collaboration with Crossref, as Crossref wants to address similar, and overlapping, use cases. Although the core Crossref infrastructure is built around citation linking of publications, Crossref is working on registering other online events associated with Crossref DOIs, e.g. a Wikipedia page referencing one or more journal articles.

This Tuesday we released version 5 of the Lagotto software [@http://doi.org/10.5281/ZENODO.49516] with support for what we need for the Event Data service. The list of changes is long and can be read in detail in the release notes. The highlights include:

1. A deposits API allowing anyone with a valid API key to push events into the system using a
   JSON object which can be (almost) as simple as

```json
{ "subj_id": "http://doi.org/10.1098/rspb.2015.2857",
  "obj_id": "http://doi.org/10.5061/DRYAD.7BQ5T",
  "relation_type_id": "cites",
  "sourceid": "europepmc_fulltext" }
```

2. A **contributor** model to aggregate resources by contributor, using the ORCID ID as
   persistent identifier.

3. Support for **Github**, clearly describing the relations between code repository, software
   release and repository owner, for the by now more than 7,000 DataCite DOIs linked to a Github release.

In the coming weeks and months DataCite and Crossref will continue developing the platform to build out their Event Data services, so stay tuned for updates! And if you don’t mind minor bugs and incomplete data (currently about 1.2 million events for over 400,000 DataCite DOIs), take a look at DataCite Event Data and send us your feedback.

## References

DataCite Metadata Working Group. (2014). DataCite Metadata Schema for the Publication and Citation of Research Data v3.1. DataCite e.V. http://doi.org/10.5438/0010 Martin Fenner et al.. (2016). Lagotto 5.0.1. Zenodo. http://doi.org/10.5281/zenodo.49516
