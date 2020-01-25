---
layout: post
title: 'Datacite Citation Display: Unlocking Data Citations'
author:
  - kgarza
date: '2020-01-07'
tags:
  - citation
  - data-level metrics
image: /images/uploads/citations_display_fig2_.png
location:
doi: 10.5438/1843-k679
---

Are published datasets actually being cited?  It's a question that must cross the mind of any avid reader of this blog at least once. We have talked about data citation plenty on this blog. Often, though, we talk about the links between academic resources and datasets — the kind of links collected by our [Event Data Service](https://support.datacite.org/docs/eventdata-guide). Many of these links between articles and datasets can be regarded as data citations, but not all.!READMORE

Until today, it wasn’t straightforward to visualize these links without having some programming skills. Well, today, that changes. Today we introduce the Citations Display in DataCite Search. Here you will be able to access all these links and distinguish between data citations, references, and other relations that exist between academic resources with DOIs. In this blog post, we try to answer the questions you may have about DataCite & data citation.

### Where does DataCite get information about the links between articles and datasets?4

There are two ways in which we get this information:DataCite members provide information about the links between their datasets and other academic resources. They do this by including related identifiers in the dataset DOI metadata they deposit with us. You can see the workflow in Figure 1.Through our collaboration with [Crossref](https://www.crossref.org/), we also have information about dataset DOIs included in published articles. Like DataCite members, Crossref members include this information in the metadata they deposit with Crossref.

![Figure 1. Steps to share data citations using the Scholix framework.](/images/uploads/citations_display_fig5_.png)

### What is the difference between citations, references, and relations?

Datasets can be related to other academic resources in a number of different ways. When members deposit related identifiers, they can indicate what the exact relationship between the dataset and the other resource is. The current version of the DataCite Metadata Schema [@https://doi.org/10.14454/7xq3-zf69] even offers 33 possible relationTypes to select from!
DataCite staff took time to consider these different relation types, discussed the options with different expert groups, and developed a proposal to classify the links into three specific categories: citations, references, and relations. We presented this proposal at the Force2019 Edinburgh and Research Data Alliance Helsinki meetings last October. 

Here we will describe each category, and we will use a definition of the term data citation as a point of departure. 

> The term 'data citation' is generally understood to mean the referral to data for credit attribution and facilitation of access to the data. At their most basic level, data citations are mentions of datasets by other academic resources, indicating that these academic resources made use of and/or build on the dataset.

In our proposal, we identified six relation types that we use to classify links as **citations**. Figure 2 (Left) shows the six relation types we use for classifying citations. We took two factors into account for the classification. First, does the nature of the relationship imply use of the dataset (was it cited, referenced, or a supplement to)? Secondly, we looked at the direction of the relationship. We classify a link as a citation only when the relationships are **inward-looking**. That is to say when the relation type points towards use of the dataset. 

The second category, references, are the opposite of citations. It makes use of the same six relation types with the difference that the links' relationships are **outward-looking**. Figure 2 (Center) shows the six relation types we use for classifying **references**.

Finally, there will be other links to express a variety of additional relationship types, such as those that suggest provenance, for example, or those that indicate version relationships. We're grouping all of the remaining relationship types under the heading **relations**. This way, all of the relationship information we have is exposed, but it's not all given the same degree of importance.

Figure 2 explains which types of relationships are included in the three different categories. References are the inverse of citations, which basically means datasets mentioning that they used another academic resource. Relations are all other links between datasets and academic resources. This example shows a dataset (DAT icon) and the type of relationships that would classify the links to/for that dataset in each category.

![Figure 2. Data citations criteria proposal](/images/uploads/citations_display_fig1_.png) <small>Figure 2. Data citations criteria proposal. This example shows a dataset (DAT icon) and the type of relationships that would classify the links to/for that dataset in each category. </small>

### What is the DataCite Citations Display?

The Citations Display takes all Citation, Reference, and Relation information between DOIs and makes it accessible in DataCite search. There are three components to the display: a citation counter, a citation chart, and a list that separates the links by citations, references, and relations.

![Figure 3. Citations Display](/images/uploads/citations_display_fig2_.png)<small>Figure 3. Citations Display for [https://search.datacite.org/works/10.5438/0014](https://search.datacite.org/works/10.5438/0014)</small>

The counter allows quick access to the total number of citations a dataset has at a given time. This counter is also shown in the search results when searching DataCite Search. 
The citations chart shows the distribution of the total number of citations over time ⁠—from the Dataset publication date until the present day.

![Figure 4. Citations Display Counter and Chart.](/images/uploads/citations_display_fig3_.png)<small>Figure 4. Citations Display Counter and Chart for [https://search.datacite.org/works/10.5438/0014](https://search.datacite.org/works/10.5438/0014).</small>

The links list displays links separated by category: citations, references, and relations. Here you get the full detail of the citations, references, and relationships. Each item is listed following the APA citation style and provides information about the link’s origin. 

![Figure 5. Citations, references and relations list.](/images/uploads/citations_display_fig4_.png)<small>Figure 5. Citations, references and relations list for [https://search.datacite.org/works/10.5438/0014](https://search.datacite.org/works/10.5438/0014).</small>

### How can I find resources with Citations?

Perhaps you are interested in finding datasets with citations. How can you do that? Well, for the time being we advise you to look at the citations counter in the result list to find resources with citations. Hereafter, we will build friendlier functionality to find resources with citations.

### Is this for Datasets only?
No, we have applied these criteria across the board to all resources with a Datacite DOI. This means that if you have a resource of e.g. the type text, software or any other you will get their citations display shown as well, and the citations will be classified in the same way.

### How can I ensure Citations of my datasets are included?
All the information displayed is based on the metadata that comes in through our members, or through our collaboration with Crossref. This means that the easiest way to get citations included is to keep your datasets’ metadata up-to-date! You can see in Figure 1 which relation types you can use for this. We include all the information we find in the metadata.

In addition, consider working with publishers to ensure they support data citation and include data citations in their metadata. If both data repositories and publishers work on this, we get the best overview of all data citations out there.

### What do these numbers mean?

It might be tempting to start using the citation numbers to draw comparisons between resources. To those who are feeling the urge to rank datasets according to the citation number, we want to say: Stop! Stay your hand! Hold off with those statistical utensils because we believe it’s still too early to rank and compare. A wealth of educated opinions exists in the literature arguing against the rash use of these counts [@https://doi.org/10.5334/dsj-2019-052; @https://doi.org/10.5281/zenodo.2547485; @https://escholarship.org/uc/item/8w36p9zf]. Today these counts provide an exciting insight into the relations between academic resources. Still, their meaning needs to be analyzed and studied by bibliometricians before we can attach meaning to them.

### Where is this information going to be used?
Displaying citations in DataCite Search is just a first step. We are currently working on a widget that will provide data repositories with an easy way to display data citations, views and downloads on their pages. We’ll be piloting this soon so if you’re interested, don’t hesitate to get in touch! We believe that increased visibility of these numbers will lead to more adoption of data citation practices, which will ensure your repository is given the credit it deserves.

We are delighted to release the Citations Display to the DataCite search users. In Datacite, we see this development as an opportunity to establish a dialogue about data citation, and we can’t wait to hear from you.

## References
