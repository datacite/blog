---
layout: post
title: MetaDIG recommendations for FAIR DataCite metadata
author:
  - thabermann
date: 2019-09-27T11:02:33.672Z
tags:
  - DataCite
  - metadata
  - featured
image: /images/uploads/figure-3_habermann.png
doi: 10.5438/2chg-b074
---
Since [Wilkenson et al., 2016](https://www.nature.com/articles/sdata201618) introduced the FAIR Principles, discussions and implementation guidelines have been published in almost every possible context. Most of these guidelines are focused on making data and/or repositories FAIR and, because of the nature of the principles, they are generally related to policies and generally high-level guidance.

Many of the FAIR Principles are applicable to metadata as well as data. The original authors point out that “throughout the Principles, we use the phrase ‘(meta)data’ in cases where the Principle should be applied to both metadata and data.” FAIR Principles F2 ([data are described with rich metadata](https://www.go-fair.org/fair-principles/f2-data-described-rich-metadata/)) and R1 ([meta(data) have a plurality of accurate and relevant attributes](https://www.go-fair.org/fair-principles/r1-metadata-richly-described-plurality-accurate-relevant-attributes/)) mention metadata specifically, but responsibility for identifying specific metadata elements that support FAIR data is left to community standards (Principle R1.3).

The Beyond Data Discovery: Shared Services for Community Metadata Improvement Project ([METADIG](https://nsf.gov/awardsearch/showAward?AWD_ID=1443062&HistoricalAwards=false) for short) funded by the U.S. National Science Foundation, recently convened experienced metadata practitioners from several communities (Data One, Long-Term Ecological Research, NOAA, NASA, California Digital Library) to initiate development of community guidelines for FAIR metadata in several dialects (Ecology Metadata Language, ISO 191*, and DataCite). This group introduced initial proposals during the summer meeting of the Earth Science Information Partners (ESIP) along with a [repository for community discussion and input](https://github.com/NCEAS/metadig-checks/issues).

This blog aims to introduce this project to a broader audience as well as to increase general awareness of some capabilities of the Data Cite dialect. We include an initial proposal for elements in the DataCite dialect that support Findability and initial results on the occurrence of that content in DataCite metadata. 

## Metadata Recommendations and Dialects

Several types of metadata recommendations are illustrated in Figure 1. “Dialect recommendations” are created along with dialects, generally by dialect creators, and are tightly coupled to the dialect implementations. All three of the dialects we are initially including in this effort (DataCite, EML, and ISO) have associated dialect recommendations included in their descriptions. In the DataCite case, these are indicated by metadata element obligations (Mandatory, Recommended, Optional) and shading in the tables that define the elements.

![](/images/uploads/figure-1_haberman.png)

_Figure 1. Dialect Recommendations, like the DataCite Recommendations, are created by dialect managers and are tightly coupled to a dialect. Dialect-Independent Recommendations, like we are developing here, must be mapped to metadata elements to be used._

The FAIR Principles are “dialect independent”, i.e. not coupled to any specific dialect. The outcome of this work will be a set of FAIR metadata recommendations for multiple communities and dialects. In these cases, mappings are required between recommended documentation concepts and metadata elements in each dialect, indicated by arrows in Figure 1. The recommendations we develop can be used as guidance for metadata creators and managers and to provide quantitative measures of “FAIRness” for metadata collections. They will also provide quantitative indicators related to the ability of machines to automatically find and use data, an important goal of the original authors.

Dialect-independent recommendations include two levels: 1) a universal set of relevant documentation concepts illustrated in the bottom layer of Figure 1 and 2) mappings of those concepts to specific metadata elements (xPaths, JSONPaths, …) in multiple dialects. The DataCite dialect is different than many others because it and the DataCite Metadata Collection is focused primarily on discovery (the Findable use case). It is not surprising, therefore, that many DataCite metadata elements can be related to Findability. The [DataCite Metadata Schema documentation](https://schema.datacite.org/) identifies and recommends elements that are “especially valuable to information seekers and added-service providers”. The elements identified there are also in MetaDIG’s proposed recommendation with increased details if appropriate.

## Essential and Supporting Findability Concepts

We have divided the relevant conceptual elements into two groups: essential and supporting. The characteristics of these groups are best described by an example. The documentation concept “Resource Author” clearly supports Findability. In the DataCite dialect, this concept is implemented as creator and the name can be represented as creator.name or creator.givenName and creator.familyName. These elements are essential to this concept and equivalents are universal across metadata dialects. There are other elements in the DataCite dialect that can provide important supporting information about authors: types, identifiers, and identifier details. Conceptual names for these items are shown in Table 1.  Similar relationships are shown in Table 2 for other concepts.

Table 2 presents our initial proposal for Essential and Supporting concepts that are included as elements in the DataCite dialect. The DataCite Obligations (M = Mandatory, R = Recommended, O = Optional) for these concepts are shown in the column titled DCO. All of the essential concepts and many of the supporting concepts are included in the MetaDIG FAIR Recommendation that we are developing with community input. These are identified in the MetaDIG repository with the DataCite label and are [available](https://github.com/NCEAS/metadig-checks/labels/DataCite) for comments and suggestions from the DataCite community.

## Measuring FAIRness of DataCite Metadata

Experience and community discussion are important parts of the recommendation development and evolution process and we welcome community input on the proposal presented above. Element occurrence rates in existing metadata collections can also provide important input to this process. The essential concepts in Table 1 were mapped to DataCite metadata elements and the occurrence rates for those elements in DataCite metadata are shown Figure 2. Blue bars (in the background) show the % of DataCite collections (out of 1411 total) that include the element in some, but not all, of their records (Exists). Orange bars show the % of DataCite collections that include the element in all records (complete). For example, the Resource Author Affiliation element exists in 43% of the collections and is complete in 11%. Three elements (Resource Publisher, Resource Publication Date, and Resource Identifier) are complete in all collections so the blue bars are not visible.

![](/images/uploads/figure-2_habermann.png)

_Figure 2. Existence and completeness of Findable Essential metadata elements._

Six concepts were mapped to mandatory DataCite elements (Resource Type General, Resource Title, Resource Publisher, Resource Publication Date, Resource Identifier, and Resource Author) and, as expected, these are by far the most common in DataCite metadata. More specialized elements (Temporal and Spatial Extent) are relatively rare.

Figure 3 shows the average % of records that include each of the elements in our recommendation in a random sample of [100 records from each DataCite data center](https://www.tedhabermann.com/blog/2019/8/15/metadata-archeology-hunting-affiliations-and-rors-in-datacite-metadata) and may provide an easy visualization of completeness for single collections (or for an overall average). Elements that are complete (Resource Title, Resource Publisher, Resource Publication Date, and Resource Identifier) show % near the outside of the circle. Less complete elements (e.g Temporal Extent, Funder Project ID, and Project Funder) are near the center of the circle.

![](/images/uploads/figure-3_habermann.png)

_Figure 3. % or records in DataCite sample that include each concept._

A simple Findable Essential Index can be created by summing the % of records that contain each recommended element. In this case, there are fifteen elements, so the index has a range of zero to fifteen. The index for the average shown in Figure 2 is 7.57 or 50%. Many of the recommended or optional elements are currently rare (< 20%) in the DataCite metadata collection. 

One hundred and thirty-eight DataCite Providers provide and manage DOIs for over 1400 Data Centers (or clients). Figure 4 shows the minimum, maximum, and average of the Findable Essential Indices for each Provider. The providers are sorted by the number of clients (shown below the data) and average index (shown by circles). The overall average index from Figure 3 is shown as a dashed line. Most providers include only one data center and they show up as single dots in this Figure. For those with more than one data center the range of the indices are shown by vertical lines.

There is significant variance of the proposed index within and between the data center collections. This is to be expected because DataCite metadata serves different purposes for different data centers. In the minimum case, the sole purpose is to register a DOI and the minimum metadata suffices. In other cases, more DataCite metadata might be provided because it exists in a native dialect and can be created as part of an automatic DataCite metadata generation process. It is clearly too early to understand and elucidate explanations for specific cases. That interesting and important task remains for future work.

![](/images/uploads/figure-4_habermann.png)

_Figure 4. Findable Essential Index minima, average, and maxima for 138 DataCite providers. The average index (7.57) is shown by the dashed line and the number of Data Centers for each provider are indicated by braces and counts below the data._

## Conclusions

Clear and specific community recommendations for FAIR metadata in multiple dialects are rare and necessary for measuring progress towards evaluating and improving metadata in many repositories. MetaDIG is initiating development of such a recommendation and soliciting community input in a repository of proposed metadata checks. We propose an initial set of concepts and an evaluation of the DataCite metadata collection for essential metadata elements that support Findability. We also examined the occurrence data for these elements in a sample of the DataCite metadata. That analysis shows that there is considerable variation in completeness of DataCite collections with respect to the recommended content. 

Our final goal is a recommendation that includes content in four categories. The first, Findable Essential, was described here. Others include Findable – Supporting and Accessible-Interoperable-Reusable Essential and Supporting. These other categories will be described in future blogs.
