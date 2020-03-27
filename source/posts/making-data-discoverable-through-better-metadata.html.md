---
layout: post
title: Making Data Discoverable Through Better Metadata
author:
  - rdasler
  - hcousijn
date: 2020-03-27T12:13:04.488Z
tags:
  - featured
image: /images/uploads/system-2660914_640.jpg
doi: 10.5438/1cqn-td43
---
As the world continues to feel the impact of the  COVID-19 pandemic, access to reliable scientific information is more important than ever. DataCite’s mission is to provide the means to create, find, cite, connect, and use research. DataCite members make their datasets and other research outputs findable, accessible and citable by registering DOIs. Importantly, registered DOIs have associated metadatas. This metadata contains important information to increase the discoverability and reusability of these research outputs.

This information is not only useful for individual researchers, but is also critical to organizations that harvest metadata programmatically. Several organizations harvest DataCite metadata to enable further reuse, and the academic community often responds to surges in research interests with similar surges in topic-specific data aggregation. We know that several of our member organizations are already coming up with their own solutions to assist researchers in data sharing and data discovery. This is a good opportunity to provide suggestions for metadata fields that are particularly useful to allow easier harvesting of research datasets. DataCite members can always update metadata for DOIs that have previously been registered. 

The DataCite Metadata Schema documentation already includes a list of “Recommended” fields that are helpful for data reuse and discovery. These fields are Subject, Contributor, Date, RelatedIdentifier, Description, and GeoLocation. In addition, we recommend that Description, RelatedIdentifier, and Subject are the most critical, and we suggest adding Rights information. 

* Rights - The Rights field is where you can include information about the data’s content license (like CC0). When this information is in the metadata for the dataset, it helps researchers to quickly see at a glance whether the data being described is something they’ll be able to use. This information is also important for harvesters who are trying to assemble lists of readily available datasets. 
* Description - The Description field may at first seem not particularly critical, but abstracts and other descriptive information is often mined for emerging trends. In a case like the current epidemic, where “COVID-19” might not be a typical controlled vocabulary term, it may be possible to surface articles on this topic by mining abstracts. Note that our schema documentation also recommends providing an English-language abstract to enable wider dissemination. 
* RelatedIdentifier - This one may go without saying. RelatedIdentifiers are always important for linking resources together. This is the information that DataCite uses for our citation counts and to feed the PID Graph. Having this RelatedIdentifier information is also helpful for following a trail of research from dataset to article to author to institution and so on. 
* Subject - The Subject field is where you can include information about subjects that are relevant for the item the DOI points to. Under the current implementation of the DataCite Metadata Schema, this field is free text, so you can add any keywords that might be relevant to the item, whether or not they’re part of a controlled vocabulary. If you would like to follow a scheme of vocabulary, you’re not restricted in the subject scheme you can specify. It can be helpful to comply with community-specific standards, such as using MeSH subject headings for medical topics or using DFG subjects for German-funded research, for example.

As an example, take a look at this dataset posted to Zenodo, one of DataCite’s members: (<https://doi.org/10.5281/zenodo.3715505>).

![Screenshot of Zenodo record](/images/uploads/screenshot-38-.png "An example of helpful metadata")

This is a compilation of data from various sources. The submitters have included relevant keywords, which are transmitted to DataCite as entries in the Subject field, and they have included a license for the overall dataset, which gets transmitted to DataCite via the Rights field. The content of the page that describes the data is transmitted to DataCite as a Description of type “Abstract”. Zenodo provides a link to show the metadata in DataCite Metadata Schema version 4 format. This can be viewed at the following link: <https://zenodo.org/record/3727291/export/dcite4> The Zenodo record also includes RelatedIdentifiers for this item, which in this case is used to relate the versions of the dataset to each other. 

We hope that this guidance helps increase the discoverability, accessibility and citability of your research data. We are always available to provide more information and guidance. Please reach out to our team at <mailto:support@datacite.org>.
