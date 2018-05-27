---
layout: post
title: From Pilot to Service
author: 
- mfenner
date: '2015-08-17'
tags:
- thor
- orcid
- crossref
doi: 10.5438/s8gf-0ck9
---
Today I am pleased to announce the launch of a new service, DataCite Labs Search – the service is available immediately at [https://search.datacite.org/](https://search.datacite.org/). This is one of [THOR](http://project-thor.eu/)’s first services and is based on work in the earlier EC-funded [ODIN Project](http://odin-project.eu/).READMORE

The ODIN project [launched the DataCite/ORCID claiming tool](http://odin-project.eu/2013/05/13/new-orcid-integrated-data-citation-tool/) in June 2013. The DataCite/ORCID claiming tool allows users to add works from the DataCite Metadata Store (MDS) to their ORCID profile. This was a successful pilot, enabling researchers to add their datasets to the ORCID service infrastructure.

THOR, the follow-up project to ODIN, started in June 2015. One of the goals of THOR is to build sustainable persistent identifier services based upon the piloting work done in ODIN.

The new DataCite Labs Search includes all functionality of the DataCite/ORCID claiming tool, but we have made some additional changes:

* re-deployed the service in the DataCite data center,
* merged the code repository back with the original CrossRef repo, and
* started work on making the service the default DataCite search.

[Last week](http://blog.datacite.org/overcoming-development-pain/) I spoke a bit about the differences between how to deploy a pilot project and a production service.

## Crosscite

The DataCite/ORCID claim tool was started in 2013 as a fork of the [open source code](https://github.com/CrossRef/cr-search) for the [CrossRef Metadata Search](http://search.crossref.org/). There are some subtle, but important differences between the CrossRef and DataCite Search API, and some other changes were introduced as well. Going forward we wanted to bring the two code bases together again, both for faster development and to make it easier for users: there shouldn't for example be much of a difference for a user between claiming a work to your ORCID profile from the CrossRef Metadata Search and the DataCite Labs Search. Since this month development happens in a common code repository in the **Crosscite** Github organization, and the project has been renamed to [doi-metadata-search](https://github.com/crosscite/doi-metadata-search). You can follow along development via Github Issues or [this waffle.io board](https://waffle.io/crosscite/doi-metadata-search):

![Waffle.io](/images/2015/08/Bildschirmfoto-2015-08-17-um-15-27-14.png)

## Search

Allowing users to add works with DataCite DOIs to their ORCID profile should not be done in a separate service, but is ideally part of the standard search interface to DataCite that users use anyway. We therefore have to make [DataCite Labs Search](https://search.datacite.org) at least as good as the current [DataCite Search](http://search.datacite.org/ui). Both services use the [DataCite Search API](http://search.datacite.org/api) as their backend, but the user interface they provide is different. Some of the differences in Labs Search include:

* a single search box
* all information is shown in a list view, no linking to pages on data.datacite.org
* citation formatter
* filter results by Creative Commons license
* an updated user interface

![DataCite Search](/images/2015/08/Bildschirmfoto-2015-08-17-um-14-05-16.png)

The single input field for searching should be appropriate for most queries, but Labs Search also supports [DisMax](https://cwiki.apache.org/confluence/display/solr/The+DisMax+Query+Parser) query syntax for more complex searches, and automatically detects DOI and ORCID names. Try some more complex queries, e.g. all presentations by a particular person.

![Citation](/images/2015/08/Bildschirmfoto-2015-08-17-um-14-13-09.png)

Providing the metadata as formatted citation is an important feature that facilitates data citation. With BibTeX and RIS two standard import formats for reference managers are also supported. This feature is basically unchanged since 2013, and relies on the [DOI content negotiation](http://crosscite.org/cn/) API provided by several DOI registration agencies. In addition, COinS is supported, allowing the import of multiple items at once, e.g. into a reference manager.

![COinS](/images/2015/08/Bildschirmfoto-2015-08-17-um-14-22-48.png)

Allowing users to search for content based on what they are allowed to do with it is another important feature of Labs Search. We are using the **rightsURI** metadata field and the standard Creative Commons licenses. You can for example limit your search to content that uses the standard Wikipedia license [CC-BY-SA](https://en.wikipedia.org/wiki/Wikipedia:CC_BY-SA_Compliance) (see above), or you might exclude content that doesn't allow commercial reuse and/or derivative works. The **rightsURI** field allows for multiple licenses, but unfortunately less than 25% of DataCite DOI metadata include a Creative Commons license.

## Labs

We are launching this updated tool as a DataCite Labs service instead of replacing the production service at search.datacite.org. There are two reasons: a) there are still some rough edges and possibly bugs, and b) we need to collect broader feedback from users before this can replace the current DataCite search. We plan to do this switch in the next 1-3 months, depending on user feedback. Please comment on this blog post, open a [Github issue](https://github.com/crosscite/doi-metadata-search/issues), tweet about it mentioning **@datacite**, or send an email to **support@datacite.org**.

Expect to see more new/updated DataCite services first appearing as DataCite Labs in the future.

## Thanks

This is a collaborative effort and I want to thank the DataCite and THOR teams, and in particular  Karl Ward, Gudmundur Thorisson, Sebastian Peters, Rob Peters, Laura Rueda, Tom Demeranville, Geoff Bilder, Laure Haak and Laura Paglione.
