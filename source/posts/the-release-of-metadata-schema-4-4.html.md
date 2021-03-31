---
layout: post
title: "What's in a name: the release of Metadata Schema 4.4"
author:
  - msmaele
  - ibernal
date: "2021-03-31"
tags:
  - datacite
  - metadata
doi: 10.5438/pwsy-ma86
---

Many things have happened since the DataCite Metadata Working Group last [released a new version](https://doi.org/10.5438/vgaq-ar22) of its schema in the summer of 2019.

Indeed, amongst a long list of transformations brought about by the ongoing global pandemic, the paramount importance of accessing research data has been made clear to all as a requirement to accelerate trustworthy and evidenced-based science. In this context, the great importance of fully describing scientific outputs is never sufficiently emphasized and here is where metadata comes into play as key conduit to discovery, access, interoperability and reuse.

For the last year and a half, and in close cooperation with DataCite staff, we have been working intensively on finalizing version 4.4 of the schema, which brings a host of significant additions. As always, input and suggestions by the community have been addressed to the best possible extent.

To start with, the name of the schema documentation has changed to better reflect the diversity of outputs that can be described: thus, its new name, 'DataCite Metadata Schema Documentation for the Publication and Citation of Research Data and Other Research Outputs', may have already caught your eye and actually encapsulates much of our lively discussion over the past months. Over the years, statistics about types of resources with DataCite DOIs show that there has been a clear trend to use the schema to describe resources other than datasets: this new schema version aims to facilitate their description.

First of all, _resourceTypeGeneral_ has been extended so as to identify the resources better. In this regard, such diversification mostly pertains to text based resources. However, emergent types, such as ComputationalNotebook, have been added to the controlled list too.

Second, the new version allows description of text based outputs in a more granular way and gives detailed guidance on how to include information about a resource related to the one being registered, e.g., a journal article, conference paper, or a book series. By adding the new property _relatedItem_, together with a host of subproperties, it is now possible to describe a text citation, or to add series information in a structured way (title, volume, issue, page, etc.), with or without identifiers, and establish full interoperability between the resource being described and its related works.

Version 4.4 of the schema includes the following changes:

#### Addition of the new subproperty “_classificationCode_” in the Subject property.

#### Addition of new values to the _resourceTypseGeneral_ property:

- Book
- BookChapter
- ComputationalNotebook
- ConferencePaper
- ConferenceProceeding
- Dissertation
- Journal
- JournalArticle
- OutputManagementPlan
- PeerReview
- Preprint
- Report
- Standard

#### Addition of a new _relationType_: isPublishedIn (indicates that A is published in B)

#### Addition of a new _relatedItem_ property, with subproperties to contain specific details for containing publication information previously encoded in a description field with descriptionType=”SeriesInformation” (for example, to define the journal name, volume, and page number for an article resource). Subproperties:

- relatedItemType
- relationType
- relatedItemIdentifier
- relatedItemIdentifierType
- creator
- title
- publicationYear
- volume
- issue
- number
- firstPage
- lastPage
- publisher
- edition
- contributor

Further, following community feedback and suggestions, this version includes further clarification as regards the following contributorTypes: DataManager, DataCurator, ResearchGroup, and HostingInstitution.

Version 4.4 is backwards compatible, and as of version 4.0 you only need to specify the major version in your metadata submission (using <http://datacite.org/schema/kernel-4>) so you can already take advantage of these updates without having to change anything else about how you send metadata to us.

With the release of metadata schema 4.4, DataCite is updating its services to enable users to create and update DOIs with the new metadata schema. The changes to the DataCite services to support metadata schema 4.4 is carried out in two phases to enable immediate access to non breaking changes.

Phase 1 has already been completed and includes:

- Full support for metadata schema version 4.4 via MDS API
- REST API Version 2 supports all changes in metadata schema version 4.4 except the new relationType _isPublishedIn_
- XSD for metadata schema 4.4 for validation
- Fabrica interface has been improved to provide access to new values to the _resourceTypeGeneral_ property from metadata schema version 4.4.

Phase 2 that will be released in Q3 will include:

- Full support for metadata schema version 4.4 via the REST API Version 3
- JSON schema to support validation
- Fabrica interface will support further selected changes from metadata schema version 4.4. This will include support for _isPublishedIn_ and _relatedItem_ within Fabrica.

You can find out more details about how to use our services with metadata schema 4.4 via our [support documentation](https://support.datacite.org/docs/datacite-metadata-schema-44).

Last but not the least, the DataCite Metadata Working Group is currently working on the update of its crosswalk to Dublin Core schema, so stay tuned for news!

If you have any specific questions about the new schema or suggestions for the next release, please send us a note at support@datacite.org.

For the complete schema, please see:

DataCite Metadata Working Group. (2021). DataCite Metadata Schema Documentation for the Publication and Citation of Research Data and Other Research Outputs. Version 4.4. DataCite e.V. <https://doi.org/10.14454/3w3z-sa82>
