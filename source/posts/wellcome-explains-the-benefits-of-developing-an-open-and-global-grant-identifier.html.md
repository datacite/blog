---
layout: post
title: Wellcome explains the benefits of developing an open and global grant identifier
author: 
- ghendricks
date: '2018-02-28'
tags:
- funding
- grant identifier
doi: 10.5438/d5zg-9g02
---
*This blog post by Crossref Director of Member & Community Outreach Ginny Hendricks and guest authors Robert Kiley and Nina Frentrop from the Wellcome Trust was cross-posted with permission from the [Crossref blog](https://www.crossref.org/blog/wellcome-explains-the-benefits-of-developing-an-open-and-global-grant-identifier/). DataCite Executive Director Patricia Cruse is participating in the grant identifier working group to make sure Crossref and DataCite align their work and our respective members can benefit from a standard approach to grant identifiers.*

Wellcome, in partnership with Crossref and several research funders including the NIH and the MRC, are looking to pilot an initiative in which new grants would be assigned an open, global and interoperable grant identifier. Robert Kiley (Open Research) and Nina Frentrop (Grants Operations) from the Wellcome explain the potential benefits this would deliver and how it might work.

## Introduction
As a funder we want to be able to track the outputs that arise from research we have funded. Currently, this is not as straightforward as it should be as researchers do not always cite their funder correctly, let alone their specific grant number. And, even when they do this accurately, because every funder users its own set of grant IDs, these numbers are not unique. For example, we can use EuropePMC to look up outputs from [grants with ID 207467](http://europepmc.org/grantfinder/results?gid=207467&page=1), and see that there is one Wellcome grant with this number, and one from the European Research Council.

To resolve such issues, we need a system in which every grant awarded is giving a unique, global ID. Global IDs are already assigned to articles [DOIs](https://search.crossref.org/), people [ORCIDs](https://orcid.org/) and even biological materials [RRIDs](https://scicrunch.org/resources). It is time for the funder community to follow suit.

## Benefits of an open & global grant identifier system
Once implemented, it would make the identification of grant-specific research outputs more accurate, whilst simultaneously reducing the burden on the researcher.

Currently, researchers are typically asked to manually disclose what outputs have arisen from their funding. In the future, such disclosures would be fully automated. We are already seeing how publishers—who collect ORCIDs through their manuscript submission system—automatically update the author’s ORCID record with details of new publications. If a global ID system for grants was developed, publishers and repositories could also require these to be disclosed on submission, and this data could then programmatically be passed to researcher assessment platforms, like [ResearchFish](https://www.researchfish.net/).

## How would it work?
For a global grant ID system to work, two things need to happen. First, when a new grant is awarded, that grant must be assigned a unique ID. For the pilot project we plan to contract with Crossref who will register a unique ID, (a DOI) for every grant we register.

Second, every DOI must resolve to a publicly accessible web site, where information about that grant is disclosed. Again, for this pilot we will almost certainly use the Europe PMC [Grants Finder Repository](http://europepmc.org/grantfinder), as we already make grant data available from this resource.

A [working group](https://docs.google.com/spreadsheets/d/1ZLx7Bv9tXIKVm9oYjnuTDCxLzmdLjcgdUBfSr6h20AY/edit#gid=0) has been established to determine precisely what metadata we should make available, but it is likely to include the name of the grant holder, title and value of the award, a short abstract, along with the name of the funder and the unique ID. Mindful that funders already assign IDs to the grants they award and that any changes to this process may be problematic (and certainly time consuming), the plan is to register a DOI which still makes use of the existing grant ID. To make it unique however, the ID will be prefixed with a funder identifier, most likely the [Funder Registry ID](https://www.crossref.org/services/funder-registry/).

## Next steps
Whilst the metadata working group is focusing on the technical aspects of the pilot, a separate “governance group” is examining how a funder might become a member of Crossref and what the business model for registering grant DOIs should be.

In parallel with this, a pilot “proof of concept” initiative is under way, and we anticipate that by autumn 2018 we will have registered DOIs for a defined cohort of grants.

Ultimately we want to get to a situation where every grant has a unique ID, which can then be unambiguously linked to the all outputs – articles, data, code, materials, patents etc. – which arise from it.

And, if every funder were to adopt such a system and expose their grant metadata in a consistent, machine-readable way, it would facilitate the development of applications to help funders get a greatly enhanced picture of the global funding landscape, which in turn would inform strategic planning and resource allocation.

## Thanks to guest authors:
Robert Kiley, Head of Open Research, Wellcome [[ORCID: 0000-0003-4733-2558](http://orcid.org/0000-0003-4733-2558)]

Nina Frentrop, Grants Information & Systems Manager, Wellcome

Please read [Crossref for funders](https://www.crossref.org/community/funders) for context, and contact [Ginny Hendricks](mailto:feedback@crossref.org) at Crossref with any questions.
