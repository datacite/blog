---
layout: post
title: PIDs for conferences - your comments are welcome!
author: abirukou
date: '2018-04-19'
tags:
- conference id
doi: 10.5438/prq9-ed42
---

*This blog post by guest author Aliaksandr Birukou was cross-posted from the [Crossref blog](https://www.crossref.org/blog/pids-for-conferences---your-comments-are-welcome/).*

*Aliaksandr Birukou is the Executive Editor for Computer Science at Springer Nature and is chair of the [Project PID Group](https://www.crossref.org/working-groups/conferences-projects/) that has been working to establish a persistent identifier system and registry for scholarly conferences. Here Alex provides some background to the work and asks for input from the community:*

Roughly one year ago, Crossref and DataCite [started](https://www.crossref.org/blog/taking-the-con-out-of-conferences) a working group on conference and project identifiers. With this blog post, we would like to share the [specification](https://docs.google.com/document/d/1URIvkUpzcfjSd2YFIS-rdRIrOyrKSbFfhkdpGPRTAFI/edit) of conference metadata and Crossmark for proceedings and are inviting the broader community to comment.

### Why are conferences important?

One common misbelief is that most published research appears in journals. However, next to new ways of communication research results (blogs, presentations, …) and journals there are also other  publication options, like books, very important in humanities, or conference proceedings, which are very important in computer science and a couple of related disciplines. Conference proceedings are collections of journal-like papers, often undergoing a more competitive peer review process than in journals. For instance, looking at original research in computer science in Scopus published in CS in 2012-2016, 63% of articles appeared in proceedings, while only 37% were published in journals. [DBLP](http://dblp.uni-trier.de/statistics/distributionofpublicationtype), one of the most important indexing services in CS, lists more than two million conference papers organized in ~5,400 conference series.

So, while it is true that CS has a significant share of conference proceedings, conferences are also relevant in many other disciplines which do not publish formal proceedings. For instance, [inSPIRE](http://inspirehep.net/) contains ~23,000 conferences in high-energy physics, the American Society of Mechanical Engineers (ASME) publishes roughly 100 [proceedings](http://proceedings.asmedigitalcollection.asme.org/conferenceproceedings.aspx) volumes annually. 

### Why do we need an open persistent ID for a conference or a conference series?

With publishers, learned societies, indexing services, libraries, conference management systems, research evaluation and funding agencies using conferences directly or indirectly in their daily work, a common vocabulary would simplify data processing, reporting and minimize errors. Right now, a publisher assigns a unique conference ID to the conference to be published, then an indexing service does it, then it is assigned in a library. Wouldn't it be easier to do this at the very beginning of the process, when the conference planning starts, and keep the same identifier through the whole conference lifecycle? 

The joint Crossref and DataCite group on conference and project identifiers has discussed this topic at half a dozen calls and various PID community meetings (PIDapalooza, FORCE conferences, AAHEP Information Provider Summit). The result of those discussions is a draft of the specification of conference metadata and Crossmark for proceedings. 

The document first defines the concepts of a conference, conference series, joint and co-located conferences. It then introduces the information we want to store about those entities, e.g., the ID, name, acronym, other IDs, URL and the maintainer of the conference series, or the ID, conf series ID, number, dates, location, and URL for conferences. Such metadata can be submitted to Crossref and DataCite by conference organizers or publishers on their behalf and linked to the existing proceedings metadata, where appropriate. It can be then used for linking research outputs from a conference (beyond formal proceedings), recognizing reviewers via services such as ORCID and Publons, computing metrics of a conference series, conference disambiguation in indexing services and ratings (CORE, QUALIS, CCF), and so on.

The second part of the document introduces Crossmark for conference proceedings. Its goal is to structure and preserve the information about the peer review process of a conference as declared by the general or program chairs. Depending on how much information is available from the conference organizers, one can use the basic or extended versions of Crossmark. 

In order to comment, please open the [specification](https://docs.google.com/document/d/1URIvkUpzcfjSd2YFIS-rdRIrOyrKSbFfhkdpGPRTAFI/edit) and leave comments using “comment” feature of Google Docs. The draft remains open for comments till the **31st of May 2018**.

### Next steps

After hearing from YOU, we will update the document to reflect the community comments. In parallel, we start a subgroup discussing the governance models, looking into whether we need a new membership category at Crossref, what fees should be covered, etc.
