---
layout: post
title: Differences between ORCID and DataCite Metadata
author: mfenner
date: '2015-09-18'
tags:
- thor
- orcid
- metadata
accession_number: MS-122-1490-7644
---
One of the first tasks for DataCite in the European Commission-funded [THOR project](http://project-thor.eu/), which started in June, was to contribute to a comparison of the ORCID and DataCite metadata standards. Together with ORCID, CERN, the British Library and Dryad we looked at how contributors, organizations and artefacts - and the relations between them - are described in the respective metadata schemata, and how they are implemented in two example data repositories, [Archaeology Data Service](http://archaeologydataservice.ac.uk/) and [Dryad Digital Repository](https://www.datadryad.org/).READMORE

The focus of our work was on identifying major gaps. Our report was finished and made publicly available last week [@https://doi.org/10.5281/ZENODO.30799]. The key findings are summarized below:

* Common Approach to Personal Names
* Standardized Contributor Roles
* Standardized Relation Types
* Metadata for Organisations
* Persistent Identifiers for Projects
* Harmonization of ORCID and DataCite Metadata

### Common Approach to Personal Names

While a single input field for contributor names is common, separate fields for given and family names are required for [proper formatting of citations](http://docs.citationstyles.org/en/stable/specification.html#names). As long as citations to scholarly content rely on properly formatted text rather than persistent identifiers, services holding bibliographic information have to support these separate fields. Further work is needed to help with the transition to separate input fields for given and famliy names, and to handle contributors that are organizations or groups of people.

### Standardized Contributor Roles

The currently existing vocabularies for **contributor type** (DataCite) and **contributor role** (ORCID) provide a high-level description, but fall short when trying to describe the author/creator contribution in more detail. [Project CRediT](http://docs.casrai.org/CRediT) is a multi-stakeholder initiative that has developed a common vocabulary with 14 different contributor roles, and this vocabulary can be used to provide this detail, e.g. who provided resources such as reagents or samples, who did the statistical analysis, or who contributed to the methodology of a study.

CRediT is complementary to existing contributor role vocabularies such as those by ORCID and DataCite. For contributor roles it is particularly important that the same vocabulary is used across stakeholders, so that the roles described in the data center can be forwarded first to DataCite, then to ORCID, and then also to other places such as institutional repositories.

### Standardized Relation Types

Capturing relations between scholarly works such as datasets in a standardized way is important, as these relations are used for citations and thus the basis for many indicators of scholarly impact. Currently used vocabularies for relation types between scholarly works, e.g. by CrossRef and DataCite, only partly overlap. In addition we see differences in community practices, e.g. some scholars but not others reserve the term citation for links between two scholarly articles. The term data citation is sometimes used for all links from scholarly works to datasets, but other times reserved for formal citations appearing in reference lists.

### Metadata for Organisations

Both ORCID and DataCite not only provide persistent identifiers for people and data, but they also collect metadata around these persistent identifiers, in particular links to other identifiers. The use of persistent identifiers for organisations lags behind the use of persistent identifiers for research outputs and people, and more work is needed.

### Persistent Identifiers for Projects

Research projects are collaborative activities among contributors that may change over time. Projects have a start and end date and are often funded by a grant. The existing persistent identifier (PID) infrastructure does support artefacts, contributors and organisations, but there is no first-class PID support for projects. This creates a major gap that becomes obvious when we try to describe the relationships between funders, contributors and research outputs.

Both the ORCID and DataCite metadata support funding information, but only as direct links to contributors or research outputs, respectively. This not only makes it difficult to exchange funding information between DataCite and ORCID, but also fails to adequately model the sometimes complex relationships, e.g. when multiple funders and grants were involved in supporting a research output. We therefore not only need persistent identifiers for projects, but also infrastructure for collecting and aggregating links to contributors and artefacts.

### Harmonization of ORCID and DataCite Metadata

We identified significant differences between the ORCID and DataCite metadata schema, and these differences hinder the flow of information between the two services. Several different approaches to overcome these differences are conceivable:

1. only use a common subset, relying on linked persistent identifiers to get the full metadata
1. harmonize the ORCID and DataCite metadata schemata
1. common API exchange formats for metadata

The first approach is the linked open data approach, and was designed specifically for scenarios like this. One limitation is that it requires persistent identifiers for all relevant attributes (e.g. for every creator/contributor in the DataCite metadata). One major objective for THOR is therefore to increase the use of persistent identifiers, both by THOR partners, and by the community at large.

A common metadata schema between ORCID and DataCite is neither feasible nor necessarily needed. In addition, we have to also consider interoperability with other metadata standards (e.g. CASRAI, OpenAIRE, COAR), and with other artefacts, such as those having CrossRef DOIs. What is more realistic is harmonization across a limited set essential metadata.

The third approach to improve interoperability uses a common API format that includes all the metadata that need to be exchanged, but doesn’t require the metadata schema itself to change. This approach was [taken by DataCite and CrossRef a few years ago](https://www.crossref.org/blog/crossref-and-datacite-unify-support-for-http-content-negotiation/) to provide metadata for DOIs in a consistent way despite significant differences in the CrossRef and DataCite metadata schema. Using HTTP content negotiation, metadata are provided in a variety of formats.

## References
