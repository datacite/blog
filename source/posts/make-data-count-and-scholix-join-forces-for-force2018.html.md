---
layout: post
title: Make Data Count and Scholix join FORCE(2018)s
author:
  - hcousijn
  - dlowenberg
date: '2018-10-22'
tags:
  - featured
  - data citation
  - data-level metrics
  - force11
image: /images/uploads/force-featured.jpg
doi: 10.5438/qm7p-wy23
---

_This blog post was cross-posted from the Make Data Count blog._

With Make Data Count now in its second year, the focus is shifting from building infrastructure to driving adoption of our open data-level metrics infrastructure. As described in previous blog posts, we built and released infrastructure for data level metrics (views, downloads, citations). While we developed a new [COUNTER endorsed Code of Practice for Research Data](https://www.projectcounter.org/code-practice-research-data/) and new processing pipelines for data usage metrics, we are using the outputs of the Scholix working group to count data citations. The most important next step? Get people, repositories, and publishers to use it. We teamed up with Scholix at FORCE2018 to explain to publishers and data repositories how they can implement and support research data metrics.

**Scholix: it’s not a thing **

![](/images/uploads/scholix_force.png)

Adrian Burton (ARDC), co-chair of the [Scholix working group](https://www.rd-alliance.org/groups/rdawds-scholarly-link-exchange-scholix-wg), started the session with a very important message: Scholix is not a thing, nobody is building it, and it’s not a piece of infrastructure. [Scholix is an information model](https://docs.google.com/presentation/d/1vs-32RAolKGp_ELe8j062PD34aR6EFQq7-u-97VorT4/edit) that was developed to allow organizations to exchange information. In practice, this now means that through Crossref, DataCite, and OpenAire you can exchange information about article-data links. These links form the basis for data citations that can be obtained by querying the APIs made available by these organizations. However, think not what Scholix can do for you, but what you can do for Scholix. The system is only useful if organizations also contribute information about article-data links.

**Send citations today! **

![](/images/uploads/datacite-force.jpg)

Following Adrian’s talk, Patricia Feeney (Crossref) and Helena Cousijn (DataCite) discussed with publishers and data repositories [how they can add information about citations to their metadata](https://docs.google.com/presentation/d/1OHOKiE5fSt5ud7E8OdkaCEGmR3PC7iW2M9H4OrNxHYE/edit) and thereby make these openly available to others. The discussion revealed that several data repositories already do a lot of work to make this happen. They hire curators for manual curation and text-mine articles to ensure all links to datasets are discovered and made available. When they deposit their metadata with DataCite, they add information about the related identifier, the type of related identifier, and indicate what the relationship is between the dataset and article. This ensures publishers also have access to this information and can display links between articles and datasets.

The publishers often depend on authors to add information about underlying datasets to the manuscript or in the submission system. When authors don’t do this, they’re not aware of any links. Most of the publishers indicated they started working on data citation but are still optimizing their workflows. Better tagging of data citations, both in their own XML and in the XML that’s sent to Crossref, is part of that. Patricia explained that Crossref accepts data citations that are submitted as relations and also DataCite DOIs in the reference lists. This gives publishers two ways to make their data citations available.

![](/images/uploads/corssref_force.jpg)

The most important message? You can use your current (metadata) workflows to contribute article-data links. Both Crossref and DataCite are very happy to work with any organization that needs assistance in implementation or optimization of data citation workflows.

**Make Data (Usage Metrics) Count**

![](/images/uploads/counter_force.png)

Following the discussion on why data citations are essential, and how publishers can contribute data citations to our infrastructure, we moved on to data usage metrics. Daniella Lowenberg (CDL), project lead for Make Data Count, explained [how repositories can standardize their usage metrics](https://docs.google.com/presentation/d/1xleMC-NyjAJRj_Tv2fRsS5ppcY7A594RL4vFFe5MEpo/edit?usp=sharing) (views, downloads) against the COUNTER Code of Practice for Research Data, contribute these usage logs to an open DataCite hub, and start displaying standardized usage metrics at the repository level. Repositories, check out our documentation[ here](https://makedatacount.org/roadmap/), and get in touch with Daniella if you would like to begin talking about implementation!

**Event Data: for all your reuse questions**

![](/images/uploads/eventdata_force.png)

Closing out the workshop, Martin Fenner (DataCite) finished the session with [an explanation of how you can consume data metrics](https://docs.google.com/presentation/d/1sq8XTI5OBEZw0cZNuv9ILIPYIuv87y1ndexahqUoc94/edit#slide=id.g43e23b526f_0_0). The links that are contributed following the Scholix framework are openly available and can therefore be used by all interested organizations. You can get these through Event Data, a service developed by Crossref and DataCite to capture references, mentions, and other events around DOIs that are not provided via DOI metadata.The Crossref and DataCite APIs support queries by DOI, DOI prefix, date range, relation type, and source. If you want to extract both usage statistics and data citations, you can obtain these through the DataCite API.  For more information, take a look at the [documentation](https://support.datacite.org/docs/eventdata-guide)! 

**What does it all look like?**

DataONE: Example from a Dryad dataset, all data citations displayed

![](/images/uploads/dataone_force.png)

Dash: Example view of standardized usage metrics & citations

![](/images/uploads/dash_force.png)
