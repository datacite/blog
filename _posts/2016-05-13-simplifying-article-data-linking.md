---
layout: post
title: Simplifying article/data linking
author: mfenner
tags:
 - citation
 - metadata
---

Data citation is core to the DataCite mission and DataCite is involved in several projects that try to facilitate data citation, including [THOR](https://project-thor.eu/), [Data Citation Implementation Pilot (DCIP)](https://www.force11.org/group/dcip), [Research Data Alliance (RDA)](https://rd-alliance.org/) and [COPDESS](http://www.copdess.org/). The biggest roadblock for wider data citation adoption might be insufficient incentives for individual researchers, but another major challenge is that implementing data citation is still too complicated.

![Citation needed. By User:Tfinc (Own work) [CC BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0), via Wikimedia Commons](https://upload.wikimedia.org/wikipedia/commons/4/4a/Citation_needed_stickers.jpeg)

When we talk about data citation, we typically mean two related, but different scenarios:

1. an article or other scholarly work cites an already published dataset.
2. all data and related metadata underlying the findings reported in a submitted manuscript should be deposited in an appropriate public repository ([PLOS data availability statement](http://journals.plos.org/plosone/s/data-availability))

The first scenario is not conceptually different from an article citing another article, where the common practice is to put everything that is cited into the reference list.

The second scenario is probably not only more common, but also requires more complex workflows, e.g. coordination of issuing persistent identifiers for article and data and linking them together via metadata. And we as a community are still working on common practices for doing this. Assuming again that incentives are the biggest driver of change (although sticks such as funder mandates are certainly also important), I would argue that researchers, publishers and funders are all interested in making this work, but that data repositories have the strongest motivation to improve the current situation. If this is true then we should give data repositories a bigger role in the publication of data associated with an article.

While many publishers host supplementary information to articles, they leave the hosting of more complex research data to external data repositories specialized in this task. The task of properly referencing all associated data in the article is currently left to the publisher, and I propose that we give more of this responsibility to the data repository. The data repository can create a record (with associated persistent identifier and metadata) that describes all data associated with an article. The data described in the record can be hosted in the repository or elsewhere. The publisher then links to this data record instead of having to appropriately integrating all data citations into the manuscript. The publisher could (and should) still link to individual data where appropriate, but the proposed solution help solve several important use cases:

* the single data record simplifies manuscript submission for publishers
* the data record provides a machine-readable representation of the data availability statement that publishers are increasingly requiring
* the publisher doesn't have the resources to provide machine-readable metadata for all data used in an article
* some articles refer to thousands of datasets (e.g. genomics papers), and this number of links is difficult to describe in the traditional article format (e.g. [JATS](http://jats.nlm.nih.gov/))

Several data repositories already provide this functionality. I am most familiar with the life sciences, where [Dryad](https://www.datadryad.org/), [BioStudies](http://doi.org/10.15252/msb.20156658) and [Figshare](https://figshare.com/blog/Unveiling_figshare_Collections_a_new_way_to_group_content/202) provide functionality that is close to what I am proposing.

My thinking about this topic was triggered by a conversation with Tim Clark in the context of the DCIP project. The [guest post by Dan S. Katz](/to-better-understand-research-communication-we-need-a-groid-group-object-identifier/) and the discussion around it was another important motivation.

