---
layout: post
title: Identify your affiliation with Metadata Schema 4.3
author:
  - rdasler
  - msmaele
date: 2019-08-16
tags:
  - DataCite
  - metadata
  - featured
image: /images/uploads/metadataschema4.3.png
doi: 10.5438/vgaq-ar22
---
The [DataCite Metadata Schema](https://schema.datacite.org/) is the basis for the metadata you submit to DataCite. It tells you the available fields and structure for your metadata records. Many of our members have told us that they’d really like to be able to include affiliation information in their metadata in a more structured way. The [launch of ROR](https://doi.org/10.5438/cykz-fh60) earlier this year provides a great step towards addressing structured capturing of affiliation information.

The release of [metadata schema 4.3](http://schema.datacite.org/meta/kernel-4.3/) therefore contains support for organizational identifiers, such as [ROR ID](https://ror.org/)s. Including ROR IDs in metadata will enable more efficient discovery and tracking of publications by institutions and is making unambiguous affiliation information widely and freely available.

Changes in this version include:

* Addition of optional “affiliationIdentifier”, “affiliationIdentifierScheme”, and “schemeURI” for affiliation
* Addition of optional “schemeURI” for funderIdentifier
* Addition of “ROR” to allowed values for funderIdentifierType

Version 4.3 is backwards compatible, and as of version 4.0 you only need to specify the major version in your metadata submission (using `http://datacite.org/schema/kernel-4`) so you can already take advantage of these updates without having to change anything else about how you send metadata to us.

If you have any specific questions about the new schema or suggestions for the next release, please send us a note at <mailto:support@datacite.org>.
