---
layout: post
title: Its all about Relations
author: mfenner
tags:
 - metadata
 - data-level metrics
 - crossref
---

In a [guest post](/location-of-the-citation/) two weeks ago Elizabeth Hull explained that only 6% of Dryad datasets associated with a journal article are found in the reference list of that article, data she also presented at the IDCC conference in February [@http://doi.org/10.5281/zenodo.32412]. This number has increased from 4% to 8% between 2011-2014, but is still low. One important reason is missing incentives: we don't yet have the same automated citation linking  between articles and data that exists between articles thanks to [Crossref](http://www.crossref.org).

Wouldn't it be nice if a data publisher such as the Oak Ridge National Laboratory is automatically informed about journal articles citing one of their datasets [@http://doi.org/10.3334/CDIAC/00001]?

![Global, Regional, and National Fossil-Fuel CO2 Emissions. [Live data](https://eventdata.datacite.org/works/doi.org/10.3334/CDIAC/00001).](/assets/images/2016/04/oak_ridge.png)

The challenge: both DataCite and Crossref collect metadata as part of the respective DOI registration services they provide. These metadata describe the information required for a citation (title, authors, publication date, etc.) [@http://doi.org/10.5438/0010]. And the metadata can contain references to related resources. But what is missing is an automated exchange of the information collected by Crossref and DataCite.

We can't simply store information coming from Crossref in the DataCite Metadata Store ([MDS](https://mds.datacite.org)) for two reasons:

1. Only the organization publishing the DOI can update the metadata, and it is important to keep
   it this way to to have a single authoritative source.

2. The DataCite MDS stores information about DataCite DOIs, but can't store metadata (again
   title, authors, publication date, etc.) for other resources such as Crossref DOIs.

DataCite thus needs a service to enhance its DataCite Metadata Store (MDS). Data citations are the most important use case, but his service should be flexible enough to also handle information coming from other providers besides Crossref, for example claims of DataCite DOIs in the ORCID registry or links of DataCite DOIs to code repositories such as Github.

The new service is called [DataCite Event Data](https://eventdata.datacite.org), and the screenshot above shows six data citations coming from Crossref. The software powering the service is called [Lagotto](http://www.lagotto.io/), open source software originally developed in 2009 by the Open Access publisher [Public Library of Science](http://www.plos.org). While Lagotto provides the basic functionality needed for the Event Data service, significant development effort was required to enable the full functionality described above. This work was done, and will continue, in close collaboration with Crossref, as Crossref wants to address similar use cases. Although the core Crossref infrastructure is built around citation linking of publications, Crossref is working on [registering other online events associated with Crossref DOIs](http://blog.crossref.org/2016/02/event-data-open-for-your-interpretation.html),
e.g. a Wikipedia page referencing one or more journal articles.

This Tuesday we released version 5 of the Lagotto software [@http://doi.org/10.5281/ZENODO.49516] with support for what we need for the Event Data service. The release would not have been possible without developer [Joe Wass](https://github.com/afandian) from Crossref. The list of changes is long and can be read about in detail in the [release notes](https://github.com/lagotto/lagotto/releases/tag/v.5.0.1). The highlights include:

1. A **deposits** API allowing anyone with a valid API key to push events into the system
   using a JSON object which can be (almost) as simple as

```json
{ "subj_id": "http://doi.org/10.1098/rspb.2015.2857",
  "obj_id": "http://doi.org/10.5061/DRYAD.7BQ5T",
  "relation_type_id": "cites",
  "sourceid": "europepmc_fulltext" }
```

2. A **contributor** model to aggregate resources by contributor, using the ORCID ID as
   persistent identifier.

3. Support for **Github**, describing the relations between software release, code repository,
   and repository owner, for the by now more than 7,000 DataCite DOIs for software linked to a Github release.

In the coming months DataCite and Crossref will continue developing the platform to build out their Event Data services, so stay tuned for updates. And if you don’t mind minor bugs and incomplete data (currently about 1.2 million events for about 400,000 DataCite DOIs), take a look at [DataCite Event Data](https://eventdata.datacite.org) and send us your feedback.

![**A real life lagotto**. Credit: Anke Büter and Najko Jahn (Exeter)](/assets/images/2016/04/lagotto.jpg)

## References

