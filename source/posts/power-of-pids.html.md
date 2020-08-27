---
layout: post
title: DataCite Commons - Exploiting the Power of PIDs and the PID Graph
author:
  - mfenner
date: '2020-08-27'
tags:
  - featured
  - pidgraph
  - freya
doi: 10.5438/f4df-4817
---
Today DataCite is proud to announce the launch of [DataCite Commons](https://commons.datacite.org), available at [https://commons.datacite.org](https://commons.datacite.org). DataCite Commons is a discovery service that enables simple searches while giving users a comprehensive overview of connections between entities in the research landscape. This means that DataCite members registering DOIs with us will have easier access to information about the use of their DOIs and can discover and track connections between their DOIs and other entities. DataCite Commons was developed as part of the EC-funded project Freya and will form the basis of new DataCite services.

### Content

DataCite Commons has a lot of content to search for. One of the most important features is the ability to search for all DOIs, no matter whether registered with DataCite, Crossref, or one of the other scholarly DOI registration agencies. Users want to search for content or look up metadata for a particular DOI, and not worry about where to look. DataCite initially focused on registering DOIs for datasets (approaching 8 million DOIs so far), but our members to date have also registered almost 6 million DOIs for text publications. At the same time, Crossref members have given almost 2 million DOIs to datasets in addition to the DOIs for journal articles, book chapters, and other text publications. Other content types can be equally found at both DataCite and Crossref, e.g. dissertations or preprints. And there are 6 more [DOI registration agencies](https://www.doi.org/registration_agencies.html) that register DOIs for scholarly content. Including the more than 110 million Crossref DOIs in DataCite Commons is a huge undertaking. We currently have 10 million Crossref DOIs in DataCite Commons with the import of many more DOIs ongoing, together with 20 million DOIs from DataCite.


### Connections

DataCite Commons not only has a lot more content to search for but also exposes the connections between DOIs in the form of citations, versions, and collections. DataCite Commons also shows the connections between content with DOIs and people, research organizations, and funders – what we together call the PID Graph of scholarly resources identified via persistent identifiers (PIDs) and connected in standard ways. We integrate with both the [ORCID](https://orcid.org/) and [ROR](https://ror.org/) (Research Organization Registry) APIs to enable a search for (10 million) people and (100,000) organizations and to show the associated content. For funding, we take advantage of the inclusion of Crossref Funder IDs in ROR metadata. We combine these connections, showing a funder, research organization, or researcher not only their content but also the citations and views and downloads if available, together with aggregate statistics such as numbers by year or content type.



<p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image2.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image2.png "image_tooltip")




<p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image3.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image3.png "image_tooltip")



### Metadata

By mapping all Crossref metadata to corresponding metadata in DataCite, we can support much more granular search queries compared to just mapping basic metadata. With this release, we are also launching a new set of filters for content search. We added license type, fields of science, primary language, and DOI registration agency to the existing filters publication year and work type. As described in a July blog post ([https://doi.org/10.5438/1dgk-1m22](https://doi.org/10.5438/1dgk-1m22)), we are using existing controlled vocabularies for these filters (license type: [SPDX](https://spdx.dev/), fields of science: [OECD](https://www.oecd.org/science/inno/38235147.pdf), and language: [ISO639-1](https://www.iso.org/iso-639-language-codes.html)), and are re-indexing all our metadata (almost completed) to align with these standard vocabularies where possible. We encourage our members to use these standard vocabularies when registering content. This should help to find content that has a license that allows unrestricted re-use, and that is in the research field and language we are interested in. Using these widely used vocabularies should help with interoperability with other services. 



<p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image4.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image4.png "image_tooltip")


<p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: inline image link here (to images/image5.png). Store image on your image server and adjust path/filename/extension if necessary. </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


![alt_text](images/image5.png "image_tooltip")



### Technology

To make DataCite Commons possible, we built a technology platform that can properly handle the metadata from multiple sources and the rich connections between them. The underlying technology is [GraphQL](https://graphql.org/). Our GraphQL API launched in May 2020 ([https://doi.org/10.5438/yfck-mv39](https://doi.org/10.5438/yfck-mv39)) and uses the [graphql-ruby](https://graphql-ruby.org/) library that also powers the GitHub GraphQL API. The DataCite Commons web frontend is built with [React](https://reactjs.org/) (together with [Apollo Client](https://www.apollographql.com/docs/react/)), a popular Javascript Framework, to interact with this GraphQL API. Everything we have built is based on open source software and is made available ([API](https://github.com/datacite/lupo) and [web frontend](https://github.com/datacite/akita)) with a permissive open source license. As always, we welcome contributions to our source code and are more than happy to help others work with GraphQL.


### Project FREYA

The work on DataCite Commons is part of the [FREYA project](https://www.project-freya.eu/en) that is helping build the European Open Science Cloud (EOSC), funded by the European Commission. DataCite Commons fulfills the specific project goals of delivering one Common DOI Search for DOIs from all DOI registration agencies, and of providing an easy to use interface for the PID Graph powered by GraphQL. FREYA will end in November 2020, and we will use the remaining three months to improve the service based on the input we collected so far, and the feedback we will receive with this release. We will focus on supporting researchers and other end-users, building on the schema.org metadata export (https://doi.org/10.5438/5aep-2n86), citation formatting, and ORCID claiming ([https://doi.org/10.5438/15x1-bj6r](https://doi.org/10.5438/15x1-bj6r)) available in DataCite Search. What we released today is the first public version of the service, we will continue adding many more Crossref DOIs and more connections, and work on improving the performance as the system scales. Beyond FREYA, DataCite Commons will be maintained and further developed by DataCite in coordination with other PID providers and the broader open science community. Watch out for a FREYA webinar on DataCite Commons in September.


### Next steps

While DataCite Commons is open to everyone to help with the discovery of scholarly resources and its connections that are part of the PID Graph, it provides particular value to DataCite members. The service makes their metadata and content available to a wide audience, helps them discover and report connections such as citations and affiliation and funding information, and provides an open platform for further integrations with other services going forward. We will closely work with DataCite members to further align the new service with their needs and the needs of the communities they serve. We will be actively seeking input as we continue to build on the DataCite Commons and there will be a dedicated Open Hours session in the coming months. If you have feedback at this point, please reach out to [DataCite Support](mailto:support@datacite.org) or post a message in the DataCite channel of the PID Forum.
