---
layout: post
title: New DataCite Metadata Schema 4.0
author: lrueda
date: '2016-09-21'
tags:
- datacite
- metadata
image: https://blog.datacite.org/images/2016/09/schemapreview.png
accession_number: MS-297-6690-1180
---
Many things have changed in the last two years in the research community. Data publication and data citation are becoming a standard in different communities, and DataCite is proud to support the development of best practices and services for these emerging initiatives.

In 2014, the [DataCite Metadata Schema 3.1](http://schema.datacite.org/meta/kernel-3.1/) was launched to support better affiliation information and new relation types. Now, two years after, the [DataCite Metadata Schema 4.0](https://schema.datacite.org/meta/kernel-4.0/) [@https://doi.org/10.5438/0012] comes with improvements to name identifiers, funding information and resource types. This update reflects the uses and needs of the community, and they are important in improving data discoverability and reusability, and promote proper credit to data creators.READMORE

![Schema](/images/2016/09/schema.svg)

The DataCite Metadata Schema 4.0 introduces these changes:

* resourceTypeGeneral becomes a mandatory field (from optional)
* The new property FundingReference is added, with subproperties funderName, funderIdentifier, awardNumber, awardURI and awardTitle. This property deprecates contributorType ‘funder’
* creatorName and contributorName have two new optional properties: familyName and givenName
* ‘IGSN’ has been added as a relatedIdentifierType option
* There is a new subproperty for GeoLocation ‘geoLocationPolygon’
* geoLocationPoint and geoLocationBox have been updated

These changes in our metadata schema would not have been possible without the stellar work of DataCite’s Metadata Working Group. The Working Group determines and maintains DataCite's metadata standard -- a big thank you to all for their hard work.

Remember that previous Metadata Schemas will still be supported, but we encourage our users and integrators to update to the current version and provide as much metadata for their DOIs as possible to improve the discoverability of datasets.

This is the first of many posts on DataCite’s new metadata schema. If you want to learn more about our latest schema, you can watch the following [webinar](https://blog.datacite.org/metadata-schema-4-webinar/) our colleagues Martin Fenner and Joan Starr presented in July.

<iframe src="https://player.vimeo.com/video/172929697" width="640" height="360" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>


If you have any specific questions about the new schema please send us a note at [support@datacite.org](mailto:support@datacite.org).

# References
