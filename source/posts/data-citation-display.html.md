---
layout: post
title: 'Datacite Citation Display: Unlocking Data Citations'
author:
  - kgarza
date: '2020-01-06'
tags:
  - citation
  - data-level metrics
image: /images/uploads/citations_display_fig2.png
doi: 10.5438/
---

Are published datasets actually being cited?  It's a question that crosses the mind of any avid reader of this blog at least once. We have talked about data citation plenty. More often, though, we talk about links collected between academic resources and datasets — the kind of links collected by our Event Data Service. Many of these links can be regarded as data citations. Maybe you didn't know because you didn't know how to access those links, or which links are citations, and there was no way to visualize it without having some programming skills. Well, today, that changes. With the introduction of the Citations Display in DataCite Search, you will be able to access all data citations, references, and relations that exist between academic resources with DOIs. In this blog post, we try to answer all questions you may have about DataCite & data citation.


## What are the differences between citations, references, and relations?

DataCite members (such as the British Library, Global Biodiversity Information Facility and many others) provide information about the relationships between their datasets and other academic resources when they include related identifiers in the dataset DOI metadata. In addition, authors provide these links when they include a dataset with a DOI in their publications’ reference section, which is then included in the article metadata.

But datasets can be related to other academic resources in a number of different ways. In fact, version 4.3 of the DataCite Metadata Schema offers 33 possible relationTypes to select from! DataCite took time to consider these different relation types, discussed the options with different expert groups, and developed a proposal to classify links into three specific categories: citations, references, and relations. We presented this proposal in Force2019 Edinburgh and at the Research Data Alliance meeting in Helsinki. 

At their most basic level, data **citations** are mentions of datasets by other academic resources, indicating that this academic resources made use of the dataset. The nature of these mentions implies credit attribution. From discussions with our team of advisors, we know that not all use is created equal, so we have included a very limited subset of relationship types in what we call a citation. Not all links provided by these sources are citations. Some of these links imply reference to another academic work, like when one references another dataset that contributed to the creation of your dataset. We’re grouping these outward-looking relationship types into what we’re calling **references**. There will be other links to express a variety of additional relationship types, such as those that suggest provenance, for example, or those that indicate version relationships. We’re grouping all of the remaining relationship types under the heading **relations**. This way, all of the relationship information we have is exposed, but it’s not all given the same degree of importance.

Figure 1 explains which types of relationships are included in the three different categories. References are the inverse of citations, which basically means datasets mentioning that they used another academic resource. Relations are all other links between datasets and academic resources. We are using this scheme to classify citations in the DataCite Search citations display.

![Figure 1. Data citations criterion proposal. This example shows a dataset (DAT icon) and the type of relationships that would classify the links to/for that dataset in each category.](/images/uploads/citations_display_fig1.png)

Figure 1. Data citations criterion proposal. This example shows a dataset (DAT icon) and the type of relationships that would classify the links to/for that dataset in each category.


## What is the Citations Display?

The Citations Display takes all Citation, Reference, and Relation information between DOIs and makes it accessible via a friendly front-end interface in DataCite Search. There are three components to the display: a citation counter, a citation chart, and a list that separates the links by citations, references, and relations.

![Figure 2. Citations Display.](/images/uploads/citations_display_fig2.png)

Figure 2. Citations Display


The counter allows quick access to the total number of citations a dataset has at a given time. This counter is also shown in the search results when searching DataCite Search. 

The citations chart shows the distribution of the total number of citations over time. It displays the evolution over time since the Dataset publication date until the present day.

![Figure 3. Citations Display Counter and Chart.](/images/uploads/citations_display_fig3.png)

Figure 3. Citations Display Counter and Chart.


The links list displays links separated by group: citations, references, and relations. Here you get the full detail of the citations, references, and relationships. Each item is listed following the APA citation style and provides information about the assertion's origin. You might notice that there is no Reference and Relation counter or chart. The later is intentional; references are outward-looking and are less likely to change over time; links in the “Relation” category have not perceived temporal association.Therefore, there is less of a need to display them in a differently.

![Figure 4. Citations, references and relations list.](/images/uploads/citations_display_fig4.png)

Figure 4. Citations, references and relations list.


## Is this for Datasets only?

No, we have applied these criteria across the board to all resources with a Datacite DOI. Thus if you have a resource of the type text, software or any other you will get their citations display shown as well, and the citations will be classified in the same way.

## How can I find resources with Citations?

Perhaps you are more interested in finding datasets with citations. How can one do that? Well, for the time being we advise you to look at the citations counter in the result list to find resources with citations. Hereafter, we will build friendlier functionality to find resources with citations.

## How can I ensure Citations of my datasets are included?
All the information displayed is based on the metadata that comes in through our members and Crossref’s members. This means that the easiest way to get citations included is to keep your datasets’ metadata updated! You can see in Figure 1 which relation types you can use for this. We include all the information we find in the metadata. In addition, consider working with publishers to ensure they support data citation and include data citations in their metadata. If both data repositories and publishers work on this, we get the best overview of all data citations out there.


## What do these numbers mean?

It might be tempting to start using the citation numbers to draw comparisons between resources. To those who are feeling the urge of ranking datasets according to the citation number, we wish to say: Stop! Stay your hand! Hold off with those statistical utensils because we believe today is too early to rank and compare. A wealth of educated opinions exists in the literature arguing against the rash use of these counts[@http://doi.org/10.5334/dsj-2019-052][@http://doi.org/10.5281/zenodo.2547485][@https://escholarship.org/uc/item/8w36p9zf]. Today these counts provide an exciting insight into the relations of academic resources. Still, their meaning would need to be first analyzed and studied by Bibliometricians before we can leap into creating sophisticated measures.

## Where is this going to be used?

Displaying citations in DataCite Search is just a first step. We are currently working on a widget that will provide data repositories with an easy way to display data citations, views and downloads on their pages. We’ll be piloting this soon so if you’re interested, don’t hesitate to get in touch! We believe that increased visibility of these numbers will lead to more adoption of data citation practices, which will ensure your repository is given the credit it deserves.

We are delighted to release the Citations Display to the DataCite search users. In Datacite, we see this development as an opportunity to establish a dialogue about data citation, and we can not wait to hear back from you.


## References
