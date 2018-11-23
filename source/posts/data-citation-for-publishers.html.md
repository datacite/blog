---
layout: post
title: 'Data citation: what and how for publishers'
author:
  - hcousijn
  - rlammey
date: 2018-11-23T11:34:33.763Z
tags:
  - data citation
  - publishers
  - crossref
---
_This blog post was cross-posted from the Crossref blog_

We’ve mentioned why data citation is important to the research community. Now it’s time to roll up our sleeves and get into the ‘how’. This part is important, as citing data in a standard way helps those citations be recognized, tracked, and used in a host of different services. 

This week [A Data Citation Roadmap for Scientific Publishers](https://doi.org/10.1038/sdata.2018.259) was published in [Scientific Data](http://www.nature.com/scientificdata). This roadmap is the outcome of a collaboration between different publishers that worked on identifying all steps you need to take as a publisher to implement data citation. If you want to know more about establishing a data policy, capturing data citations at the point of submission, or tagging data citations in your XML, we recommend you take a look at this article! 

In this blog post, we’ll discuss the steps you need to take after you’ve implemented this roadmap. The steps in the roadmap describe how you can track & tag data citation yourself. Here we describe how Crossref can help you make these available to the rest of the community. 

**
The what
**

Here’s the recap! From the Crossref perspective, there are two ways to data citation links into the metadata that you register. 

\*\*

1. Metadata deposits with Crossref using the References section of the schema.\*\* 

This is where ‘citations’ are normally recorded. Publishers include the data citation into the deposit of bibliographic references for each publication. 

Publishers can deposit the full data or software citation as a unstructured reference. For guidance here, we recommend that authors cite the dataset or software based on community best practice ([Joint Declaration of Data Citation Principles](https://www.force11.org/group/joint-declaration-data-citation-principles-final), [FORCE11 citation placement](https://www.force11.org/node/4771), [FORCE11 Software Citation Principles](https://www.force11.org/software-citation-principles)).

```

<citation key="ref=3">

   <unstructured_citation>Morinha F, Dávila JA, Estela B, Cabral JA, Frías Ó, González JL, Travassos P, Carvalho D, Milá B, Blanco G (2017) Data from: Extreme genetic structure in a social bird species despite high dispersal capacity. Dryad Digital Repository. http://dx.doi.org/10.5061/dryad.684v0</unstructured_citation>

</citation>

```

Or they can employ any number of [reference tags](https://support.crossref.org/hc/en-us/articles/215578403-Adding-references-to-your-metadata-record) currently accepted by Crossref.

```

<citation key="ref2">

  <doi>10.5061/dryad.684v0</doi>

  <cYear>2017</cYear>

  <author>Morinha F, Dávila JA, Estela B, Cabral JA, Frías Ó, González JL, Travassos P, Carvalho D, Milá B, Blanco G</author>

</citation>

```

We are exploring [JATS4R](http://jats4r.org/data-citations) recommendations to expand the current collection and better support these citations - more on this soon. We also encourage additional suggestions from the community.

\*\*

2. Metadata deposits using the Relations section of the schema. \*\*

This is where other relationships can be recorded. Publishers assert the data link in the [relationship section](https://support.crossref.org/hc/en-us/articles/214357426-Relationships-between-DOIs-and-other-objects) of the metadata deposit. Here, publishers can identify data which are direct outputs of the research results if this is known. This level of specificity is optional, but we’d recommend it as it can support scientific validation and research funding management.

Data and software citations via relation type enables precise tagging of the dataset and its specific relationship to the research results published. To tag the data & software citation in the metadata deposit, we ask for the description of the dataset & software (optional), dataset & software identifier and identifier type (DOI, PMID, PMCID, PURL, ARK, Handle, UUID, ECLI, and URI), and [relationship type](http://data.crossref.org/reports/help/schema_doc/4.3.5/NO_NAMESPACE.html#inter_work_relation_relationship-type). 

```
 <program xmlns="http://www.crossref.org/relations.xsd">
             <related_item>
             <description>Data from: Extreme genetic structure in a social bird species despite high dispersal capacity</description>
             <inter_work_relation relationship-type="references" identifier-type="doi">10.5061/dryad.684v0</inter_work_relation>
             </related_item>
          </program>
       </doi_relations> 


```

In general, use the relation type “references” for data and software resources. 

Publishers who wish to specify that the data or software resource was generated as part of the research results can use the “isSupplementedBy” relation type. 

**
The how 
**

**
I create my own XML and register it with Crossref
**

Add links to datasets into your reference lists, including their DOIs if available as shown above and deposit them with Crossref. We’ll do the rest. If you want to add references to existing metadata records, you don’t need to redeposit the full article metadata, you can send us a [resource-only deposit](https://support.crossref.org/hc/en-us/articles/215578403) that just contains the reference metadata to append that to the existing metadata for the article. You can also use this method if you prefer to deposit references in a separate workflow to registering your content (i know some members prefer to work this way. 

**I’ve started using Metadata Manager for journal article deposits
**

You can deposit data citations using either method using our new [Metadata Manager](https://www.crossref.org/help/metadata-manager/) tool. When entering journal article metadata, you can use the ‘Related Items’ section to enter the DOI (or other identifier) for the dataset, the type of identifier, a description of the relation type e.g. .Data from: Extreme genetic structure in a social bird species despite high dispersal capacity’, and the relation type - ‘references’ or ‘is supplemented by’ depending on the relationship between the data and the article as described above. When you make the deposit, this relationship information will be registered in Crossref along with the rest of the article metadata. 

![](/images/uploads/metadatamanager.png)

**Adding the relationships element via Metadata Manager 
**

Metadata Manager also has a section where you can enter and match your references, and then deposit these with Crossref. If you choose this method, enter any data citations into the references section before depositing the article metadata with Crossref. 

If you want to add this information to deposits you have already made using Metadata Manager, you can search for the journals and articles in the interface, bring up the existing metadata and add in the additional information before redepositing. 

**
I use Simple Text Query to search for and deposit references
**

Make sure you include any citations to data in the references you add into Simple Text Query. When you use Simple Text Query to deposit these references, they will then be added into the article metadata in the Crossref database. 

If you use OJS, they’re working on functionality (due for release soon) that will make it easier to deposit reference metadata with Crossref, so you can include citations to data in that. 

All of this metadata - sent to Crossref - make it possible to build up pictures of data citations, linking, and relationships. Whether the citations come from the authors in the reference list or they are extracted by the publisher and then deposited, Crossref collects them across publishers. We then make the aggregate set freely available via [Crossref’s APIs](http://help.crossref.org/crossref-apis) in multiple interfaces (REST, OAI-­PMH, OpenURL) and formats (XML and JSON). DataCite does the same for data repositories and so this provides an easy way for publishers and data repositories to exchange information about data citations. As mentioned previously, this all feeds in Event Data. Data is made openly available to a wide host of parties across the extended research ecosystem including funders, research organisations, technology and service providers, indexers, research data frameworks such as [Scholix](http://www.scholix.org), etc. 

Do you have questions about how to add these links to your Crossref or DataCite metadata? We’ll be running a series of webinars in early 2019 to give you a chance to join us live and ask any questions you have. Eager to get started in the meantime? [Let us know](mailto:support@crossref.org) and we’ll start to coordinate.
