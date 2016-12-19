---
layout: post
title: 'Data catalog cards: simplifying article/data linking'
author: mfenner
date: 2016-05-13
tags:
- citation
- metadata
doi: 10.5072/6ECH-0D2~
published: false
---
Data citation is core to DataCite's mission and DataCite is involved in several projects that try to facilitate data citation, including [THOR](https://project-thor.eu/), [Data Citation Implementation Pilot (DCIP)](https://www.force11.org/group/dcip), [Research Data Alliance (RDA)](https://rd-alliance.org/), and [COPDESS](http://www.copdess.org/). The biggest roadblock for wider data citation adoption might be insufficient incentives for individual researchers, but another major challenge is that implementing data citation is still too complicated.

![[Citation needed](https://commons.wikimedia.org/wiki/File%3ACitation_needed_stickers.jpeg). By User:Tfinc (Own work) [CC BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0), via Wikimedia Commons](/images/2016/05/Citation_needed_stickers.jpeg)

When we talk about data citation, we typically mean two related, but different scenarios:

1. an article or other scholarly work cites an already published dataset.
2. all data and related metadata underlying the findings reported in a submitted manuscript should be deposited in an appropriate public repository ([PLOS data availability statement](http://journals.plos.org/plosone/s/data-availability))

The first scenario is not conceptually different from an article citing another article, where the common practice is to put everything that is cited into the reference list.

The second scenario is probably not only more common, but also requires more complex workflows, e.g. coordination of issuing persistent identifiers for article and data and linking them together via metadata. And we as a community are still working on common practices for doing this. Assuming again that incentives are the biggest driver of change, I would argue that researchers, publishers, and funders are all interested in making this work, but that data repositories have the strongest motivation to improve the current situation. If this is true then we should give data repositories a bigger role in the publication of data associated with an article.

While many publishers host supplementary information for articles, they leave the hosting of more complex research data to external data repositories specialized in this task. Properly referencing all associated data in the article is currently the job of the publisher, and I propose that we give more of this responsibility to the data repository. The data repository can create a data catalog card (with associated persistent identifier and metadata) that describes all data associated with an article. The data catalog card is a collection of metadata, and different from a data paper. The data described in the catalog card can be hosted in that repository or elsewhere.

![[The medium is the message](https://www.flickr.com/photos/sukisuki/4414318674/). By suzanne chapman [CC BY-NC-SA 2.0](https://creativecommons.org/licenses/by-nc-sa/2.0/), via Flickr](/images/2016/05/medium_message.jpg)

The publisher then links to this data catalog card via the article metadata and can display the catalog card formatted as a data availability statement. The publisher could (and should) still link to individual data where appropriate, but the proposed solution helps solve several important issues:

* the data catalog card simplifies manuscript submission for publishers
* the data record provides a machine-readable representation of the data availability statement that publishers are increasingly requiring
* the publisher doesn't need to provide machine-readable metadata for all data used in an article, but can reference the data catalog card. Accession numbers that are not globally unique can be used in the article if they are properly referenced in the data catalog card. This facilitates the transition from current practices
* some articles refer to thousands of datasets (e.g. genomics papers), and this number of links is difficult to describe in the traditional article format (e.g. [JATS](http://jats.nlm.nih.gov/))

Several general purpose data repositories already provide most or all of this functionality, I am most familiar with [Dryad](https://www.datadryad.org/), BioStudies [@http://doi.org/10.15252/msb.20156658] and Figshare [@https://figshare.com/blog/Unveiling_figshare_Collections_a_new_way_to_group_content/202]. Data catalog cards probably work best for repositories that a flexible in the kinds of data they take, and repositories that already have integrations with publishers. Not every data repository needs to support this functionality. Data catalog cards are also an opportunity for differentiation, e.g. by providing data curation, help with data review, etc.

My thinking about this topic was triggered by a conversation with [Tim Clark](http://www.massgeneral.org/neurology/researcher_profiles/clark_timothy.aspx) in the context of the DCIP project. The guest post by Dan S. Katz [@https://blog.datacite.org/to-better-understand-research-communication-we-need-a-groid-group-object-identifier] and the discussion around it was another important motivation, and a DataCite blog post from last August [@https://blog.datacite.org/reference-lists-and-tables-of-content] contains some of the ideas expressed here. Obviously this topic is of great interest to DataCite, as we hope that data catalog cards use DataCite DOIs, and that we can help both with making article/data publishing workflows easier, and with discovering data associated with an article.

## References

