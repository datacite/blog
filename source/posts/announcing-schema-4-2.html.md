---
layout: post
title: Announcing schema 4.2!
author:
  - rdasler; msmaele
date: 2019-03-20T07:17:52.792Z
tags:
  - featured
image: /images/uploads/screenshot-2019-03-20-at-09.24.22.png
doi: 10.5438/wvkv-fz40
---
The DataCite Metadata Schema is the basis for the metadata you submit to DataCite. It tells you the available fields and structure for your metadata records, and it’s what we validate against to make sure everything is as it should be. The metadata schema is maintained by the Metadata Working Group, which is composed of member representatives. The Working Group meets monthly to talk through issues raised and to plan new releases of the schema. They’ve been hard at work on the latest schema update, and we’re pleased to announce that it’s ready. 

The DataCite Metadata Working Group has rolled out the brand-new [DataCite Metadata Schema version 4.2](https://doi.org/10.5438/bmjt-bx77). This version introduces some new properties and sub-properties to better help you further describe how your DOIs fit into the research landscape. These are: 

- Addition of new dateType “Withdrawn”
- Addition of new relationType pair: IsObsoletedBy and Obsoletes
- Addition of new relatedIdentifierType “w3id”
- Addition of new subproperties for Rights:
    - rightsIdentifier
    - rightsIdentifierScheme
    - schemeURI
- Addition of the XML language attribute to the properties Creator, Contributor and Publisher for organizational names.

Version 4.2 is backwards compatible, and as of version 4.0 you only need to specify the major version in your metadata submission, so you can already take advantage of these updates without having to change anything else about how you send metadata to us. 

We'd also like to take this opportunity to remind you that version 2.1 and version 2.2 of the schema have been deprecated. As of the beginning of 2019, we are no longer accepting metadata submitted as version 2.1 or version 2.2. Those of you who have still been using these versions should be sure to update how you are submitting your metadata. 

Those of you who are using any of the flavors of schema version 3 won't be required to switch just yet, but you may be missing out on some of the new fields and properties that have been added since you last reviewed your metadata workflows. There's no better time to switch to the latest and greatest version 4.2!

If you have any specific questions about the new schema please send us a note at [support@datacite.org](mailto:support@datacite.org).
