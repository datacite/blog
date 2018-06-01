---
layout: post
title: 'Glad you asked: A snapshot of the current state of data citation'
author:
  - kjgarza
date: '2018-05-30'
tags:
  - scholix
  - data citation
  - make data count
  - rda
---
citation analysis: title in progress
2018-05-30

For the past several years data citation has been an important topic in the research community. A recent [Scholarly Kitchen post](https://scholarlykitchen.sspnet.org/2018/05/28/whats-up-with-data-citations/) addresses the complexity of the citation network and the data citation gap in relations to article citation.  This is a complicated question and requires further analysis. This blog post examines two questions related to this topic: 1) the growth of data citation over the last several years, and 2) the opportunities and limitations of using the Crossref and DataCite [Event Data](https://www.crossref.org/services/event-data/) service as a source of data citation analyses. This work was recently presented at RDA Plenary Meeting Berlin 2018, as part of the  [RDA/WDS Scholarly Link Exchange Working Group](http://www.scholix.org/). 

In this work, we performed an exploratory analysis of data citation dataset collected via Crossref’s and DataCite's Event Data services. We analyzed data that used the preferred method for data citation according to the Joint Declaration of Data Citation Principles (JDDCP) \[@https://doi.org/10.25490/a97f-egyk]. 

Additionally, we examined records downloaded from the Crossref’s Event Data and DataCite service and developed a series of recommendations regarding the use of this source for data citation analyses. Overall, the analysis shows that data citation is growing at a slow rate. Furthermore, we found different data citation practices between publishers and data centers. We identify limitations in terms of identification of the types of relationship between datasets and publications. We hope  that this analysis will help identify early patterns of data citation. We also expect that this work will lay the groundwork for future analysis of data citation using the Crossref and DataCite Event Data services.

Analysis Background

What are data citations in this context?\
There are many ways a researcher can cite data. At the moment the prevailing formal recommendation is to cite data is the JDCCP. That is, in scholarly literature, whenever and wherever a claim relies upon data, the corresponding data should be cited \[@https://doi.org/10.25490/a97f-egyk]. 

It is import to clarify that the nature of citations can vary by local practice and reason for citation. In some cases article authors cite their own data as way of including supplementary materials. And, in other cases, authors cite data from other contributors as a way to reuse data produced by other researchers.

What is Event Data? 
The [EventData](https://www.crossref.org/services/event-data/) service was collaboratively developed by Crossref and Datacite. The service collects events associated with scholarly resources on the web. The Crossref EventData service collects events related to article publication in the EventData hub, while the DataCite EventData service collects events related to scholarly resources with DataCite DOIs. Both services are made accessible using the EventData Query API provided by Crossref.

This exploratory analysis is trying to answer three specific questions.
How many data citations are there and how has data citation grown?
How have publishers use of data citations changed over time?
Who is citing who?

Results
Data citation Practices

In total, we found more than 870,000 data-article publication citations. We found an imbalance in data-article publication linking practices used by article authors. As shown in Figure 1, we observed that data citation information is, in most cases, provided by data producers rather than article authors. There are more than 850,000 citations from data to articles compared to 22,000 citations from articles to data.

Figure 1. Comparison between links provided from data producers and article authors. Each box is 20,000 links. Data producers provided approximately 850,000 links (right panel). Article authors provided around 22,000 links (left panel).

It is unclear why article authors are not providing as many citations to data as data producers are providing links to article publications. One potential issue is that data citation information might not be requested by publishers. Another possibility is publishers are not included in the references list for the EventData service capturing. Perhaps  authors do not provide this information even when requested. Other possibility is that authors provide data citation information in other ways, for instance, in article metadata or in-line text. Answering these questions would require an analysis of publisher requirements for publishing, their metadata ingestion workflows, and the practices of their authors.

Out of the 20,000 data-article publication links provided by article authors only 19% of the resourced linked, or cited, are explicitly defined as “datasets”. For this blogpost we have limited this analysis to that 19% (~4,000 citations) of the data citations.

Data Citation Growth 

In terms of how the data citation has changed over time we found a slight increase in data citations provided by article authors. Between March 2017 and March 2018 the increase in data citations provided by articles authors has seen a small increase. However, this increase varies by publisher. Figure 2  illustrates data citation registration by publishers and compares the current state, 2018, to 2017. We are filtering by the top contributors to this dataset only. Clearly data citation is growing at a very slow rate. The positive slope of this growth is small for most publishers -- with Springer Nature and F1000 being the exceptions .

Figure 2. Slopegraph comparing data citation changes over time for a list of publishers. In this graph we filtered to the top 8 contributors of data citations to the dataset. The dataset corresponds to data citations collected as of March 2018.

The slight growth should not come as a surprise. Although many journals provided citation information on their landing pages, they often rely in the citation information provided by data centers to populate landing pages. The outliers, Springer Nature and F1000 Research, show a steep increase in data citations, which needs further investigation. 

Connection Patterns

We also found interesting patterns when looking at the entities to which data citations connect. These entities being publishers and data centers. To show this data we  are using a parallel set graph. We analyzed the three top contributors to the dataset (e.i., Springer Nature, F1000 research and Wiley-Blackwell) and we found three different patterns. 

With Springer Nature we observed a very dispersed pattern. In other words, the citations connect Springer Nature with many different data centers. This means that authors publishing in Springer Nature cite sources located in a number of diverse repositories. In the Figure 3, we highlight Dryad as one of the data centers that is the most cited by Springer Nature metadata. This pattern could be related to the wide range of topics in the Springer Nature journals.

Figure 3 Parallel set graph for links between particular Publishers and a particular Data Center. Publishers as the top category and Data Centers as the bottom category. Highlighting (in GREEN) citations from Springer Nature to particular repositories.The width of the bar denotes the absolute number of citations for that publisher-data center match. The dataset corresponds to links collected as of March 2018.
This dispersed pattern, however, is not the only one. We found that citations from F1000 Research usually links to the same data centers, either F1000 or figshare --see Figure 4. There are number of reasons for this. F1000 encourages the publication of  data together with article publication and this is done in the F1000 data section. F1000 acts as  both a publisher and a data center. The strong likeage with figshare come from the fact the figshare functioned as [F1000 data store in the early beginings of the journal](https://figshare.com/articles/F1000_and_figshare_Case_Study/1559059). 

Figure 4 Parallel set graph for links between particular Publishers and a particular Data Center. Publishers as the top category and Data Centers as the bottom category. Highlighting (in GREEN) citations from F1000Research to particular repositories.The width of the bar denotes the absolute number of citations for that Publisher-Data center match. The dataset corresponds to links collected as of March 2018.

Finally, another interesting pattern is from Wiley-Blackwell. In this case (see Figure 5) we found a combination of the two previous patterns. We can see an established pattern between journals in Wiley-Blackwell and the Dryad repository. At the same time we can see a dispersed pattern with many other repositories. 

Figure 5. Parallel set graph for links between particular publishers and a particular data center. Publishers as the top category and data centers as the bottom category. Highlighting (in GREEN) citations from Wiley Blackwell to particular repositories.The width of the bar denotes the absolute number of citations for that publisher-data center match. The dataset corresponds to links collected as of March 2018.
Overall our results indicate that data citation is taking place but there is still a long path ahead. This exploratory analysis has allows to assess that the Event Data service together with DataCite’s and Crossref API services can provide the data to answer questions about the trends of data citation in scholarly publishing. Overall the assessment is positive and has also provided further path of investigation. Additionally, we expect that this exploratory analysis will shed light in the early trends of data citation. For example,  consider F1000 Research, where  the researcher publishing in their journal has a specific data center or repository to preserve their data is very interesting. Does this suggest that other publishers should consider this strategy? 

There are a few lessons learned from this analysis. The analysis used a combination of data sources, thus it required significant effort on integrating information from DataCite and Crossref. New strategies need to be considered to streamline further analyses. Additionally, DataCite needs to encourage data producers (and DataCite members) to assign correct resource type in their metadata. This will help us to separate resources that are not explicitly datasets. Furthermore, journals need to encourage article authors to add data citations in their references as well as streamline their workflows to allow services such as EventData to capture and make public data citations.

Further investigation needs to be carried out exploring different topics. For example what underlying patterns exist in regard to data citations provided by data centers. This is a large dataset and DataCite is currently analyzing it. Additionally, there are other ways  that authors cite data, and further research would need to be undertaken . Finally, the underlying reasons for the imbalance between data citation information provided by data producers and article authors needs to be further investigated. This could potentially be addressed by reaching out to journals and investigating their workflows and requirements for data citation.

Data citation is important for scholarly communications. This analysis provides data on current practices, but we, as a community, have a lot of work to do to make data a first-class citizen. We look forward to continued discussion and analysis on this topic..
