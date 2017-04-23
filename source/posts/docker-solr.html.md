---
layout: post
title: Towards Realtime DOI Search
author: kgarza
date: '2017-03-25'
tags:
- Docker
- Solr
- EBS
- EFS
image: https://blog.datacite.org/images/2016/12/cool-dois.png
doi: 10.5438/8WYF-HPQV
published: false
---


![Art?](/images/2017/04/art2_new_db_index.png)



You might be wondering, what is this picture? Well, a few months ago I could not show you this picture; the data that I used to created it,  did not exist. This is actually just a distorted version of DataCite search indexing frequency. Once you add a Y-X axis and some labeling you can see that picture actually represents, in a 24hrs span, our database CPU utilization every time we index it to generate our Search. Until last month, we were only indexing DOIs once per day. From last week that has a changed. We now are indexing DOIs every eight hours.


![DB indexing over 24hrs.](/images/2017/04/new_db_index.png)


This has two important implications for our members. First, it means that data centers do not have to wait  24 hours to see the DOIs they minted reflected in DataCite Services. That is not limited to services such as DataCite Search, it includes DataCite API and DataCite OAIPMH. Second, this frequency increase also means that data centers can redesign their workflows to take advantages of the new DOI indexing frequency.

This change has been one of the benefits of changing our backend infrastructure to use containers. In this case, our Solr indexing application has been moved to a Docker container, we are triggering all our indexing tasks using AWS Lambda and the index is stored in a separated EBS volume. Docker is a popular software containerisation platform that wraps a piece of software in a complete system that contains everything needed to run: code, runtime, system tools, system libraries. This guarantees that the software will always run exactly the same way, regardless of its environment. On the other hand, AWS Lambda lets us run code without provisioning or managing servers, which simplifies the way we trigger new indexing tasks. Elastic Volumes (EBS) makes it easy to dynamically increase capacity, tune performance, and change the type of any new or existing current generation volume with no downtime or performance impact.

There are many new exciting things DataCite now can do with this change. For example, we have a better control on adding new metadata fields in our index. Currently, the Search index does not include fields such as *fundingReference* or *geoLocation* but now we can add them and have a better control of which fields are in our index. We can also work in updating our Solr Index to a new version. Having the whole index fitted in a container infrastructure, we can now have a better control of updates without breaking our current applications. Furthermore, in the near future, our members can expect that this frequency increases even more. We are currently studying which indexing frequency is optimal for our infrastructure and the changes we need to make to provide real-time DOI Search.
