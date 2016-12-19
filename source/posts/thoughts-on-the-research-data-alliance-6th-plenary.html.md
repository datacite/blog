---
layout: post
title: Thoughts on the Research Data Alliance 6th Plenary
author: mfenner
date: 2015-10-01
tags:
- thor
- rda
---
The [Research Data Alliance 6th Plenary](https://rd-alliance.org/plenary-meetings/rda-sixth-plenary-meeting.html) last week discussed numerous topics very relevant to DataCite. Below is a short subjective list of topics I found interesting. If you attended RDA, feel free to add your thoughts in the comments. And if you didn't attend, you can still provide feedback.

#### Interoperability between Persistent Identifiers
The [Persistent Identifiers IG](https://rd-alliance.org/ig-pid-p6-meeting-session.html) discussed the different persistent identifier activities in various RDA working and interest groups. The EC-funded [THOR](http://project-thor.eu/) project that started in June was presented by Josh Brown from ORCID and Trisha Cruse from DataCite. I presented the DataCite perspective on persistent identifier interoperability. One important shortcoming of many persistent identifiers including DataCite DOI names is that only one organization – the publisher - can update the metadata. What is also needed is a **claim store** where multiple organizations and not just the publisher can deposit links between different persistent identifiers, e.g. citations, funding information, ORCID identifiers, etc. CrossRef and DataCite are working on such a claim store (more info [here](http://blog.datacite.org/announcing-data-level-metrics-in-datacite-labs/) and [here](http://crosstech.crossref.org/2015/09/det-poised-for-launch.html)).

#### Data repository registries
Several sessions discussed repositories that collect information about data repositories. [re3data](http://www.re3data.org/) is one of the more important initiatives in this space, and [will become a DataCite service in 2016](http://www.re3data.org/2015/05/datacite-to-manage-and-develop-re3data-org/). One critical step is [persistent identifiers for data repositories](http://www.re3data.org/2015/08/introduction-of-the-re3data-org-persistent-identifier/) that are used across data services, including the DataCite Metadata Store.

#### Dynamic Data Citation
Unfortunately I missed the session of the [Data Citation WG](https://rd-alliance.org/wg-data-citation-p6-meeting-session.html) - I presented in the parallel [RDA/WDS Publishing Data Bibliometrics WG](https://rd-alliance.org/wg-rdawds-publishing-data-bibliometrics-p6-meeting-session.html). But I had interesting discussions about this topic durig the coffee breaks. I need to better understand the proposed solutions and how they fit into DataCite's existing infrastructure.

#### Data Packages
The [Data packages BoF](https://rd-alliance.org/data-packages-bof-p6-bof-session.html) was organized by Rufus Pollock from the Open Knowledge Foundation ([OKFN](https://okfn.org/)), and he kindly invited me to present my perspective. This is an exciting topic and look for more on this topic in a future blog post.

#### Publishing Data Services
The [RDA/WDS Publishing Data Services](https://rd-alliance.org/wg-rdawds-publishing-data-services-p6-meeting-session.html) presented their work on a data - literature [linking service](https://www.openaire.eu/dliservice). DataCite has worked closely with CrossRef on this topic since last year, and it was good to see a lot of overlap in the approaches taken, e.g. using the `relationType` vocabulary from the DataCite Metadata Schema.

#### Data Citation
On the last day of RDA I gave a short presentation in the [Joint meeting of RDA/WDS Publishing Data WGs and IGs](https://rd-alliance.org/ig-rdawds-publishing-data-p6-joint-session.html), summarizing some of the challenges implementing data citation:

<script async class="speakerdeck-embed" data-id="804df2be5af148ffa0a048c0777d75ee" data-ratio="1.33333333333333" src="//speakerdeck.com/assets/embed.js"></script>

In the session we had a good discussion on how to move forward with the work started by the working group and its various interest groups.
