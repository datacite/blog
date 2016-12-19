---
layout: table
title: DataCite Mandatory Properties
author: mfenner
date: 2016-05-20
summary: |
  The following provides a detailed description of the mandatory properties,
  which must be supplied with any initial metadata submission to DataCite,
  together with their sub‐properties. From: Table 3, [DataCite Metadata Schema 3.1](http://schema.datacite.org/meta/kernel-3.1/index.html) documentation.
type: Dataset
tags:
- csv
- metadata
doi: 10.5072/WZJR-D7ZV
published: false
---
ID,DataCite‐Property,Occ,Definition,"Allowed values, examples, other constraints"
1,Identifier,1,The Identifier is a unique string that identifies a resource.,DOI (Digital Object Identifier) registered by a DataCite member. Format should be `10.1234/foo`
1.1,identifierType,1,The type of Identifier.,"*Controlled List Value*:\n\n* DOI"
2,Creator,1‐n,"The main researchers involved in producing the data, or the authors of the publication, in priority order.","May be a corporate/institutional or personal name. Note: DataCite infrastructure supports up to 8000‐10000 names. For name lists above that size, consider attribution via linking to the related metadata."
2.1,creatorName,1,The name of the creator.,"*Examples*: Charpy, Antoine; Jemison, Mae. The personal name format should be: family, given. Non‐roman names may be transliterated according to the ALA‐LC schemes."
2.2,nameIdentifier,0‐n,"Uniquely identifies an individual or legal entity, according to various schemes.",The format is dependent upon scheme.
2.2.1,nameIdentifierScheme,1,The name of the name identifier scheme.,"If nameIdentifier is used, nameIdentifierScheme is mandatory. *Examples*: ORCID, ISNI."
2.2.2,SchemeURI,0‐1,The URI of the name identifier scheme.,"*Examples*: [http://www.isni.org](http://www.isni.org), [http://orcid.org](http://orcid.org)"
2.3,affiliation,0‐n,The organisational or institutional affiliation of the creator.,Free text.
3,Title,1‐n,A name or title by which a resource is known.,Free text.
3.1,titleType,0‐1,The type of Title.,"*Controlled List Values*: AlternativeTitle, Subtitle, TranslatedTitle, Other"
4,Publisher,1,"The name of the entity that holds, archives, publishes prints, distributes, releases, issues, or produces the resource. This property will be used to formulate the citation, so consider the prominence of the role.","*Examples*: World Data Center for Climate (WDCC), GeoForschungsZentrum Potsdam (GFZ), Geological Institute University of Tokyo"
5,PublicationYear,1,The year when the data was or will be made publicly available.,"YYYY. If an embargo period has been in effect, use the date when the embargo period ends. In the case of datasets, *publish* is understood to mean making the data available on a specific date to the community of researchers. If there is no standard publication year value, use the date that would be preferred from a citation perspective."
