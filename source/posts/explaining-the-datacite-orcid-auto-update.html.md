---
layout: post
title: Explaining the DataCite/ORCID Auto-update
author: mfenner
date: 2015-10-29
tags:
- orcid
- crossref
- thor
doi: 10.5072/E3S8-K40D
published: false
---
This Monday ORCID, CrossRef and DataCite announced ([ORCID post](http://blog.orcid.org/blog/2015/10/26/auto-update-has-arrived-orcid-records-move-next-level), [CrossRef post](http://crosstech.crossref.org/2015/10/auto-update-has-arrived-orcid-records-move-to-the-next-level.html), [DataCite post](/auto-update-has-arrived/)) the new auto-update service that automatically pushes metadata to ORCID when an ORCID identifier is found in newly registered DOI names.

This is the first joint announcement by the three organizations, and shows the close collaboration between ORCID, CrossRef and DataCite. A good opportunity to learn more about these joint activities are the [ORCID Outreach Meeting in San Francisco](https://orcid.org/assets/sf2015) November 3-4, and the [CrossRef Annual Meeting in Boston](http://www.crossref.org/annualmeeting/agenda.html) November 17-18.

As promised in the Monday blog post, I want to explain the DataCite implementation of the ORCID auto-update functionality in a separate blog post. To start with the bad news: the DataCite service isn't ready yet, and will launch in November. There are two reasons for this: CrossRef started to work on this functionality much earlier, and – more importantly – DataCite feels that we need to make some major architectural changes in our systems to implement this properly. The good news is that the architectural changes will give us a more solid foundation for additional features we can add over time. Let me explain the most important issues below.

### Permissions

In order to update an ORCID record, an organization needs permission from the researcher who owns the record. These permissions can be short-lived for a specific update, or long-lived for many years. The latter is obviously the preferred option for the auto-update functionality.

DataCite is already collecting permissions to update ORCID records from our [Search and Link service](http://search.labs.datacite.org/) and we want to continue collecting permissions for the Auto-update service in the same place. To do this properly, we will launch a new Profiles service. It will act as a central place to interact with DataCite services. In the first version it will focus on ORCID permissions, but we can build this out over time with additional functionality. The service is currently under testing, we hope to launch **Labs Profiles** next week.

One unresolved issue with the current implementation is that DataCite has to use the same ORCID client credentials for both the Search and Link and Auto-update services. This makes it impossible to distinguish self-claims by a researcher coming in from the Search and Link service, and links coming in from the Auto-update service. CrossRef's has an ORCID membership that allows them to use separate client credentials for Search and Link and Auto-update. We are working with ORCID to solve this.

### Multiple Sources

Another challenge is the synchronization between the Search and Link and Auto-update services. ORCID records can contain multiple claims for the same DOI, e.g. from Search and Link, Auto-update, and possibly also other sources. Here is an example from my ORCID record with claims from Europe PubMed Central, CrossRef Metadata Search and Scopus:

![](/images/2015/10/Bildschirmfoto-2015-10-29-um-11-01-37.png)

It is important for DataCite to allow claims from multiple sources, and to show the provenance of every item in a person's ORCID record. The way the Search and Link service currently works (and [CrossRef Metadata Search](http://search.crossref.org/) and [DataCite Labs Search](http://search.labs.datacite.org/) use the same [codebase](https://github.com/crosscite/doi-metadata-search) for this) is that researchers can only add a claim to their ORCID records if that DOI is not yet claimed, even if the claim comes from another source. This is a pragmatic decision, as researchers will probably resort to self-claiming only for items that were not automatically added to their profiles. With the launch of Auto-update we need to rethink this approach, possibly allowing users to claim all works that have not yet been claimed via the Search and Link service.

### Push API

[Notifications](http://support.orcid.org/knowledgebase/articles/665437-the-orcid-inbox) are an essential feature of ORCID's Auto-update. They allow CrossRef and DataCite to push information to the ORCID record of a person without prior permission. The ORCID record owner receives a message in his/her inbox and has the opportunity to decide whether or not to accept the claim(s).

The way DataCite's end is implemented results in an information push to ORCID whenever an ORCID is found in our metadata. There is a big overlap between this functionality and what we do in the Search and Link service: authentication with ORCID, background workers for processing, XML generation, error tracking, etc. Therefore we want to move this functionality to a centralised place, separate from the core Search and Link and Auto-update functionalities. While the current focus is on pushing information to ORCID, we could build similar notification services for other organizations in the future, e.g. pushing information to a funder whenever we find a grant identifier in newly issued DOI names. The above requires refactoring of the Search and Link code and it is currently underway.

### Round-trip

Auto-update is a milestone in automating the workflow of linking ORCID identifiers and DOI names. What is still missing is the opposite direction: telling publishers and data centres about links to their DOIs found in the ORCID registry, e.g. via self-claiming services such as Search and Link. This is relevant for already published works, and for publishers and data centres that have not yet integrated ORCID into their submission systems.

The ORCID registry focusses on a researcher view, i.e. the works associated with a particular researcher. We also need the inverse here, a service that shows all ORCID identifiers associated with a particular DOI. This information can be very helpful for publishers and data centres, as they can take this information, verify it, and add it to their internal systems and to the metadata they send to CrossRef or DataCite. DataCite is working with ORCID and CrossRef on this. We have aggregated this information for all 205,000 DataCite DOI names that are linked to at least one ORCID identifier. We found a total of about one million links (because most DOI names are linked to multiple ORCID identifiers) and a surprisingly small number of ORCID identifiers (about 2,500) responsibles for these one million links. Or maybe not so surprising if you remember [this August blog post](/digging-into-data-using-r/).

Please provide feedback regarding auto-update in the comments. We will follow-up with a new blog post in a few weeks when the DataCite Auto-update service has launched.
