---
layout: post
title: One step closer towards instant DOI search results
author: kgarza
date: '2017-04-25'
summary: |
  Up until last month, we were only indexing DOIs once a day. We changed that
  last week, and we now are indexing DOIs every eight hours.
tags:
- docker
- solr
image: https://blog.datacite.org/images/2017/04/new_db_index.png
accession_number: MS-95-6142-5623
---
![Art](/images/2017/04/art2_new_db_index.png)


![Art?](/images/2017/04/art2_new_db_index.png)

You might be wondering, what this pink and green picture illustrates?  A few months ago we couldn't  show you this picture; the data that we used to created it, did not exist. And the answer to what this illustrates -- this is simply a distorted version of DataCite search indexing frequency. Once you add a Y-X axis and some labeling you can see this picture represents, in a 24-hour span, our database CPU utilization every time we index it to generate our Search. Up until last month, we were only indexing DOIs once a day. We changed that last week, and we now are indexing DOIs every eight hours.

This has two important implications for our members. First, it means that data centers do not have to wait 24-hours to see the DOIs they minted reflected in DataCite Services. This is not limited to services such as DataCite Search, but it includes DataCite API and DataCite OAI-PMH. Second, this also means that data centers can redesign their workflows to take advantages of the new DOI indexing frequency.

This has two important implications for our members. First, it means that data centers do not have to wait 24-hours to see the DOIs they minted reflected in DataCite Services. This is not limited to services such as DataCite Search, but it includes DataCite API and DataCite OAI-PMH. Second, this also means that data centers can redesign their workflows to take advantages of the new DOI indexing frequency.

This change is one of the benefits of changing our backend infrastructure to use containers. In this case, our Solr application that provides the index for DataCite Search has moved to a Docker container, we are triggering all our indexing tasks using [AWS Lambda](https://aws.amazon.com/lambda/), and the index is stored in a dedicated [Amazon EBS](https://aws.amazon.com/ebs/) volume. Docker is a popular software "containerization" platform and wraps a piece of software in a complete system that contains everything needed to run: code, runtime, system tools, system libraries. This guarantees that the software will always run exactly the same way, regardless of its environment. AWS Lambda lets us run code without provisioning or managing servers, which simplifies the way we trigger new indexing tasks. Storing the index in a separated Elastic Volume (EBS) enables persistent Index storage outside the docker container that in place give the means to dynamically increase capacity, tune performance, and change the type of any new or existing current generation volume with no downtime or performance impact.

There are many new exciting things DataCite can do with this change. For example, we have better control on adding new metadata fields in our index. Currently, the Search index does not include fields such as _fundingReference_ or _geoLocation_, but now we can add them and control which fields are indexed. We can also update our Solr software to a newer version, using an [official Docker image for Solr](https://hub.docker.com/_/solr/). With the whole index in a container infrastructure, we now have a better control of updates and not run the risk of breaking our current applications. Furthermore, in the near future, our members can expect the indexing frequency to increase even more. We are currently studying which frequency is optimal for our infrastructure and the changes we need to make to provide DOI search right after DOI registration.
