---
layout: post
title: Metrics for Characterizing Metadata Collections
author:
  - thabermann
date: '2018-08-15'
tags:
  - metadata; DataCite
image: /images/uploads/habermann-blogpost.jpg
doi: 'https://doi.org/10.5438/z5w2-gk80'
---
_This is a guest blog post written by Ted Habermann, Director of Business and Community Development for The HDF Group. Dr. Habermann is currently leading International Standards Organization (ISO) projects developing XML Schema and transforms for ISO Metadata. He is also widely recognized as an expert in data management and in architectures of observing systems, data archives, and distribution systems._

Over the last several years, DataCite has grown to be one of the largest repositories of metadata for many domains and types of resources. It is a great resource for data citation, discovery, and access and offers a growing set of related services. The [DataCite Metadata Schema](http://schema.datacite.org) includes over sixty metadata elements of which six are mandatory. Understanding how the recommended and optional elements are used can help DataCite understand their users and, more importantly, the use cases they are addressing. In addition, this may help identify cohorts of data providers with common behaviors and common metadata related needs and practices. Guidance and user support strategies that target these specific needs can then be developed.

**DataCite Metadata Collections**

I introduce the term “Metadata Collection” to refer to sets of metadata records that are managed, and usually governed, as a unit. These collections are typically produced by a single organization and their contents reflect decisions, policies, and practices of that organization. This usage is not to be confused with the “Collection” value of the resourceTypeGeneral attribute in the DataCite metadata schema which refers to collections of resources rather than to collections of metadata records that describe those resources.  

DataCite includes metadata from over 1200 data centers collected by seventy-nine aggregation services (<https://stats.datacite.org>). While there are six collections with over 500,000 records, 663 of the collections include less than one hundred records and the median collection size is close to eighty. It seems likely that characteristics of these smaller collections reflect organizational decisions and practices. The goal of this work is to elucidate those behaviors and potentially identify groups of organizations with similar behaviors. 

There are many ways to slice the DataCite collection pie for analysis. We started with a sample of the largest collections from significant aggregators and added several others as the picture began to form. We collected random samples of 500 from larger collections and included entire collections that were smaller than 500. The sample is certainly not comprehensive, but it may be representative. If the metrics we propose turn out to be helpful, the analysis may be extended across DataCite and potentially to other metadata repositories as well.

**Method**

Metadata samples were retrieved for DataCite collections with a variety of sizes and examined to identify metadata elements that had content. The number of occurrences of each element was determined to get occurrences/record (O/R) for each element. These numbers are:

•	0 if the element does not occur in any records in the collection.

•	between 0 and 1 if the element occurs in some of the records in the collection.

•	1 if number of occurrences = number of records. This typically means the element occurs once in every record, although it may not. Values = 1 typically occur for identifiers, titles and boilerplate or other content that occurs once in each record.

•	>1 if the number of occurrences > number of records. Means that the element occurs multiple times in some records. Does not necessarily mean that it occurs in all records, i.e. some records may have enough occurrences to hide records with none. Values > 1 typically occur for content like keywords, contact information, or online links that can occur many times in a single record.

Once these numbers are calculated for each element, they can be used to calculate several indices for each collection:

_Number of Records_: The total number of records in the collection.

_Number of Elements_: The number of elements in the collection with content: O/R >= 0.

_Complete Elements_: The elements that occur in all records.

_Partial Elements_: The elements that occur in some, but not all records. These may be opportunities for improving the completeness of the collection.

_Coverage w/r to Repository (CR)_: The set of elements present in the repository (repository total) is the union of elements present in each record in the repository. Typically, no single collection has all of these elements. CR is the number of elements in the collection / the total number of elements in all collections (the repository). Collections with high CR values (near 100%) contains many of the elements included in all other collections in the repository. These are a great place to look for usage examples and guidance. Collections with CR < 100% might benefit from guidance that references and builds on those examples.

_Collection Homogeneity (CH)_: If all elements in a collection are complete, then all of the records contain the same elements. The number of elements with O/R >= 1 / the total number of elements in the collection provides a measure of homogeneity of the records within a collection. CH is 1 if all of the records in a collection have all of the same elements.

**Results**

The collections examined contained between eight and fifty-seven elements each with the total number of elements in this sample of the repository being seventy-five. Figure 1 shows the distributions of CR and CH for sixty-three collections. The average collection completeness is 34% (25 elements) and most of the collections are 50% or more homogeneous.

![null](/images/uploads/figure1_habermann.png)

_Figure 1. Distributions of Completeness w/r to Repository (blue) and Homogeneity (orange)._

An interesting relationship emerges when these two metrices are combined (Figure 2). There is a clear tendency for collection completeness to decrease as homogeneity increases. In other words, collections tend to include records with the same small set of elements (in the lower right quadrant of Figure 2) or records with more elements incompletely populated (in the upper left quadrant). The homogeneous collections include the six required DataCite elements (creatorName, identifier, identifierType, publicationYear, publisher, and title) and one or more other elements selected to address specific need of each collection. For example, a collection that includes information in English and Russian includes the @xml:lang attribute and a collection that includes local identifiers uses the alternateIdentifier element with the @alternateIdentifierType attribute. The fact that these collections remain homogeneous as content grows beyond the required fields reflects collection wide use cases and associated requirements. Some of these requirements are met by recommended elements, some by optional elements in the DataCite Metadata Schema.

**Collection Quality**

The quality of a metadata collection is related to how well it accomplishes the goals of creators and users. The metrics proposed here are related to relative completeness and homogeneity, and their purpose is to identify DataCite collections that share properties, and perhaps goals, and might provide examples for others that share those goals.

Collections that are complete and homogeneous would occur in the upper right corner of Figure 2 and we can combine these two metrics by measuring distance from that corner. This combined measure ranges from 0.44 to 0.95 (31 to 67% of the maximum possible distance) with small numbers being better. Figure 2 identifies the three collections that are closest to complete and homogeneous (Global Biodiversity Information Facility (65 records), University College of Dublin (500 records), and The Kinder Institute (16 records)). These collections, and others like them, may provide a fruitful starting point for overall collection improvements.

![null](/images/uploads/figure2_habermann.png)

_Figure 2. Completeness vs. Homogeneity for sixty-three DataCite Metadata Collections. Three collections that are closest to complete and homogeneous are identified._

**Conclusion**

The metadata collection metrics proposed here clearly indicate that most DataCite providers go beyond the required metadata elements and use their DataCite metadata to address needs beyond just creating DOIs for resources. They also indicate that there is significant room for increasing completeness and homogeneity of these collections and migrating the points in Figure 2 towards the upper right corner. The metrics can help identify data providers that are setting examples for others to follow and to identify groups of providers with common paths forward.

_Acknowledgement - Parts of this material are based upon work supported by the National Science Foundation under Grant No. NSFDACS11C1675. Any opinions, findings, and conclusions or recommendations expressed in this material are those of the author(s) and do not necessarily reflect the views of the National Science Foundation._
