---
layout: post
title: Identify your affiliation with Metadata Schema 4.3
author:
  - rdasler
  - mdesmaele
date: 2019-08-16T13:01:52.683Z
tags:
  - DataCite
  - metadata
---
The [DataCite Metadata Schema](https://schema.datacite.org/) is the basis for the metadata you submit to DataCite. It tells you the available fields and structure for your metadata records. Many of our members have told us that they’d really like to be able to include affiliation information in their metadata in a more structured way. The [launch of ROR](https://doi.org/10.5438/cykz-fh60) earlier this year provides a great step towards addressing structured capturing of affiliation information. 



The release of this metadata schema therefore contains support for organizational identifiers, such as [ROR ID](https://ror.org/)s. Including ROR IDs in metadata will enable more efficient discovery and tracking of publications by institutions and is making unambiguous affiliation information widely and freely available.



Changes in this version include:

·       Addition of optional “affiliationIdentifier”, “affiliationIdentifierScheme”, and “schemeURI” for affiliation

·       Addition of optional “schemeURI” for funderIdentifier

·       Addition of “ROR” to allowed values for funderIdentifierType



Version 4.3 is backwards compatible, and as of version 4.0 you only need to specify the major version in your metadata submission, so you can already take advantage of these updates without having to change anything else about how you send metadata to us.

If you have any specific questions about the new schema or suggestions for the next release, please send us a note at support@datacite.org.
