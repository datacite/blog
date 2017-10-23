---
layout: post
title: New DataCite Metadata Updates Support Software Citation
author: jstarr
date: '2017-10-23'
tags:
 - metadata
 - software
 - featured
image: https://blog.datacite.org/images/2017/10/matrix.png
accession_number: MS-745257251
---

The DataCite [Metadata Schema 4.1](http://schema.datacite.org/meta/kernel-4.1/) has been released today. If the 4.1 release has a theme, it is support for software citation. The DataCite Metadata Working Group addressed this topic in response to increasing interest within the community, including the publication of the Force11 Software Citation Principles [@https://doi.org/10.7717/peerj-cs.86] as well as a set of guidelines prepared by the UK Science and Technology Facilities Council for working with the DataCite schema [@http://purl.org/net/epubs/work/24058274].READMORE

![*Image taken from [https://commons.wikimedia.org/wiki/File:FortranCardPROJ039.agr.jpg](https://commons.wikimedia.org/wiki/File:FortranCardPROJ039.agr.jpg). Licensed under CC-BY-SA*](/images/2017/10/fortran.png)

The 4.1 update is backward compatible and introduces a number of schema and documentation [@https://doi.org/10.5438/0014] enhancements to make software citation easier and clearer. These include:

* Two new relation types
  * (HasVersion, IsVersionOf)
    * **HasVersion**: The registered resource such as a software package or code repository has a versioned instance (indicates A
      has the instance B) e.g. it may be used to relate an un-versioned code repository to one of its specific software versions.
    * **IsVersionOf**: The registered resource is an instance of a target resource (indicates that A is an instance of B) e.g. it
      may be used to relate a specific version of a software package to its software code repository.

  * (IsRequiredBy, Requires)
    * **IsRequiredBy**: The registered resource such as a software package (A) is required by an identified external resource (B).
      This maybe used to indicate software dependencies.
    * **Requires**: The registered resource such as a software package (A) requires an identified external resource (B). This may
      be used to indicate software dependencies.

* Extensive additions and modifications to the documentation, which are provided within the main text of the documentation as well
  as in a separate, “pull-out” appendix.

While the DataCite metadata schema now supports software registration, and provides properties to include version information
for items being registered, it is not to be used as a version control or source code control system. There are many tools
widely available that are ideally suited for that purpose. Instead, DataCite facilitates *software discovery*, *sharing*
and *citation*.

If you have any specific questions about the new schema please send us a note at [mailto:support@datacite.org](support@datacite.org).

## References
