---
layout: post
title: Dataverse is now minting DOIs with DataCite Metadata Store API
author: ecastro
date: '2016-03-30'
tags:
- doi
doi: 10.5438/bmmq-yce9
---
With the release of [Dataverse 4.3](https://github.com/IQSS/dataverse/releases/tag/v4.3) in mid-March, anyone installing or updating to the most recent version of the Dataverse software will be able to mint DOIs directly through the [DataCite Metadata Store API](https://mds.datacite.org/static/apidoc).READMORE This functionality was originally announced at DataCite’s General Assembly and Strategy Meeting February 2016 - Amsterdam (Netherlands) and according to Patricia Cruse, Executive Director, DataCite:

_"DataCite is very excited to offer this new functionality to the research community. Sharing data is good. Dataverse is quickly becoming a critical component of the data sharing landscape. We all share the goal of increasing access and use of research data and by connecting communities and integrating research platforms we are taking a collective step forward to accelerate data sharing. DataCite looks forward to continued collaborations with the Dataverse team."_

![Dataverse and DataCite](/images/2016/03/dataverse.png)

In addition, the new API will also support more dataset metadata fields to increase discoverability of datasets in Dataverse: description, author affiliation and author identifier (e.g., [ORCID](http://orcid.org) identifier which helps with researcher disambiguation).

It is also important to note that the project received help from [Peking University’s open source code in GitHub](https://github.com/pengchengluo/Peking-University-Open-Research-Data-Platform), who had already enabled support for minting DOIs with DataCite in their forked installation of Dataverse ([http://opendata.pku.edu.cn/](http://opendata.pku.edu.cn)). Martin Fenner, Technical Director, DataCite, also paid the Dataverse team a visit in February of 2016 and helped design this feature to better serve the DataCite community. To see how this can be configured in Dataverse 4.3, visit [Dataverse’s Installers Guide](http://guides.dataverse.org/en/latest/installation/config.html?highlight=datacite).

In order to further enhance DataCite support--currently in consideration for phase 2 development of this feature--we received feedback that certain Dataverse installations who have multiple institutions, with each of them having their own DataCite DOI prefix, will need to be able to select from a list of multiple prefixes (set at the Dataverse level) to register DOIs for their datasets. This is currently being tracked in GitHub Issue #[2943](https://github.com/IQSS/dataverse/issues/2943).

This is a crosspost from [http://dataverse.org/blog/now-minting-dois-datacite-metadata-store-api](http://dataverse.org/blog/now-minting-dois-datacite-metadata-store-api).
