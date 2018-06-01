---
layout: post
title: 'Glad You Asked: A Snapshot of the Current State of Data Citation'
author:
  - kgarza
  - mfenner
date: '2018-06-01'
tags:
  - scholix
  - data citation
  - make data count
  - rda
image: /images/uploads/slope_publishers.png
doi: 'https://doi.org/10.5438/h16y-3d72'
---
For the past several years data citation has been an important topic in the research community. The community came together and agreed that data must be granted first-class citizenship in the practice of scholarship. Thus the community defined a set of guiding principles for data within scholarly literature. This is known as the Joint Declaration of Data Citation Principles (JDDCP)[@https://doi.org/10.25490/a97f-egyk], published in 2014.

In the same year, the [Making Data Count](https://mdc.lagotto.io/) project started to explore the incentives for authors to share their data. The project did an initial exploration of metrics for data sharing [@https://doi.org/10.1038/sdata.2015.39] and kickstarted services for the collection of data citations and other data metrics. In 2015, Crossref and DataCite started to collaborate on exchanging links between Crossref DOIs and DataCite DOIs – many of which are links between articles and data – in the context of the [Event Data](https://www.crossref.org/services/event-data/) service that more broadly collects information about resources linking to Crossref and DataCite DOIs. In 2016, the [RDA/WDS Scholarly Link Exchange Working Group](http://www.scholix.org/), extended the framework defined by the [RDA/WDS Publishing Data Services Working Group](https://rd-alliance.org/groups/rdawds-publishing-data-services-wg.html), and started to implement the Scholix exchange framework for data-article information links. The Crossref/DataCite Event Data service is part of that framework and supports the Scholix link exchange metadata schema since March 2018.

In this blog post we will use data from the Event Data service, with a focus on links between Crossref DOIs and DataCite DOIs, to obtain a snapshot of the current state of data citation. A version of this work was presented at the RDA Plenary Berlin in March 2018, as part of the  [RDA/WDS Scholarly Link Exchange Working Group](http://www.scholix.org/) session. 

### Data analysis

As of March 2018, we found more than 870,000 links between Crossref DOIs and DataCite DOIs. As shown in Figure 1, the majority of these links – more than 850,000 – originated from DataCite DOIs, compared to about 22,000 links originating from Crossref DOIs.

![Figure 1. Comparison between links provided via Crossref DOIs (left panel, about 22,000 links) and DataCite DOIs (right panel, about 850,000 links). Each box represents 20,000 links.](/images/uploads/total_links.png)

Out of the 22,000 links provided via Crossref DOIs, only 16% or 3,657 are links between literature and data, defined by using a Crossref type for a scholarly text document and the DataCite metadata resourceTypeGeneral of “Dataset” [@https://doi.org/10.5438/0014]. This is the current number of data citations that we can discover via the Crossref/DataCite Event Data service. 

In terms of how the number of these data citations have changed over time, we found a 40% increase (from 2,599 to 3,657) between March 2017 and March 2018. This increase varies by publisher and its driven mostly by increased data citation counts from SpringerNature and Faculty of 1000. Figure 2 shows how the number of data citations, broken down by publisher, changed between 2017 and 2018, focussing on the publishers with the highest number of data citations. 

![Figure 2. Data citation changes between 2017 and 2018 for the eight publishers with the highest number of data citations. The dataset corresponds to data citations collected as of March 2018.](/images/uploads/slope_publishers.png)

Finally, we looked at the data repositories where the cited data are hosted separately for each publisher. Using Wiley-Blackwell as an example, figure 3 shows that the majority of their data citations for go to the Dryad data repository.

![Figure 3. Data citations between particular publishers and a particular data center. Publishers as the top category and data centers as the bottom category. Highlighting (in GREEN) citations from Wiley Blackwell to particular repositories. The width of the bar denotes the absolute number of citations for that publisher-data center match. The dataset corresponds to links collected as of March 2018.](/images/uploads/wiley.png)

### Conclusions
The number of data citations that can be found via links between Crossref DOIs and DataCite DOIs is low (3,657 in March 2018). Our data analysis supports similar findings reported by Tim Vines in a [recent blog post](https://scholarlykitchen.sspnet.org/2018/05/28/whats-up-with-data-citations/). Reasons for this finding include the following:

1. Many journals still have no stated policy on research data [@http://www.ijdc.net/article/view/12.1.65/467] and don’t ask authors to link to the data underlying the findings in their manuscript submissions.
1. Data citations can be deposited in Crossref metadata via [relation types or references](https://www.crossref.org/blog/how-do-you-deposit-data-citations/). The Crossref/DataCite Event Data service currently only captures reference metadata.
1. The majority of data citations are done within the text of the publication, without including them in the reference list [@https://doi.org/10.5438/f17b-45vz].
1. Many datasets are not using DOIs as a persistent identifier, in particular in the life sciences, where accession numbers are more common [@https://doi.org/10.1371/journal.pone.0063184].
1. With the large number of links provided by data repositories (see above), many publishers [integrate these backlinks to their articles into their publishing platforms](https://www.elsevier.com/about/press-releases/science-and-technology/elsevier-and-pangaea-link-contents-for-easier-access-to-full-earth-system-research) instead of providing the links themselves.
1. Coordinating the publication of an article and associated data is complicated [@https://doi.org/10.5281/zenodo.1063636], in particular if the dataset is not published before submission of the manuscript, but in parallel to the article. Many publishers and publication platforms still need to do significant work in this area, and integrating with many different data repositories is a particular challenge.

The large percentage of Wiley-Blackwell data citations going to the Dryad data repository reflects a long history of collaboration of Molecular Ecology, and other Wiley-Blackwell journals in the fields of Ecology and Evolution, with the Dryad data repository. Molecular Ecology is one of the journals leading the charge for improved data accessibility [@https://doi.org/10.1511/2014.106.6] and established a Joint Data Archiving Policy ([JDAP](https://datadryad.org/pages/jdap)), “which calls for authors to archive their data when their paper is published” in 2011. 

### Next Steps
Looking ahead there are many actions that can be taken to improve the state of data citation, including:

1. There is still a lot of work to do in the area of policy, the [RDA Data Policy Standardization and Implementation Interest Group](https://www.rd-alliance.org/groups/data-policy-standardisation-and-implementation) is one of the important venues for discussion and implementation of journal data policies. The [Belmont Forum](http://www.bfe-inf.org/) is coordinating funder activities, and the Credit for Data Sharing initiative focusses on acadmic institutions [@https://doi.org/10.1056/NEJMsb1616595].
1. To provide incentives to authors, data citation counts and actual data citations should be displayed on repository landing pages for datasets. The [Make Data Count project](http://makedatacount.org/) is working on [example implementations](https://dash.ucop.edu/stash/dataset/doi:10.7280/D1988W) and data citation display guidelines for repositories. 
1. Changing data citation practices will take time, so until all data citations are included in metadata and sent to Crossref, we should look at other approaches to collect data citations, such as text-mining for DOIs [@https://doi.org/10.1371/journal.pone.0063184].
1. Similarly, data citations provided via data repositories (around 850,000 from DataCite data repositories in 2018) continue to be an important source for data citations.
1. Data citations for datasets not using DOIs should be contributed to the Scholix network, and EMBL-EBI is doing this for the life sciences. ([API documentation](http://europepmc.org/RestfulWebService#dataLinks)).
1. Crossref is working on including links to DataCite DOIs found in relation type metadata in the Event Data service. The DataCite metadata schema 4.0 released in 2016 requires a resourceTypeGeneral for all DOIs, making it easier to identify the subset of DataCite DOIs that describes datasets [@https://doi.org/10.5438/x4jq-egt5].
1. Article-data publishing workflows need to be simplified and standardized. The Arnold Foundation-funded [Enabling FAIR Data project](https://osf.io/jy4d9/) is working on this topic for publishing workflows in the Earth and Space Sciences.
1. While DataCite is not directly involved in article-data publishing workflows, we can help in two important areas: a) better integrate with metadata lookup in publishing tools, e.g. to validate reference lists, and b) coordination with Crossref in DOI registration for article and data after manuscript acceptance. 

The increase of the data citations coming via publishers by 40% since 2017, the pioneering work by a number of publishers, the large number of data citations provided by data repositories, and the wide-ranging activities of the data sharing community are hopefully signs that we are on a good path forward.

## References
