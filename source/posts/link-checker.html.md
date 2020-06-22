---
layout: post
title: Link checker is here
date: '2018-12-20'
image: /images/uploads/linkchecker-issues.png
author:
  - rdasler
tags: 
  - datacite
  - featured
doi: 10.5438/vywf-6s91
---

DataCite is pleased to announce our newest service. The link checker is here! Many of you have asked for an automated link checking service to help you maintain your DOI records, and it's now out of the box and ready for Members to use. 

The link checker is a custom-built crawler (based on the popular open-source tool [Scrapy](https://scrapy.org/)) that works its way through one DOI per DataCite Client per day and attempts to follow the URL registered in the metadata. The link checker then returns information about whether or not its attempt was successful and what it found at the other end.  

We're rolling out link checker as a Members-only service. The service runs automatically in the background, so there's nothing Members need to do to enable it. You can already see link checker info in action on those of your DOIs that have been checked. 

![Link checker results in DOI Fabrica](/images/uploads/linkchecker-allsuccessful.png)

It's a big job to get through all 14 million or so DOIs that are registered with DataCite, so you won't be able to see link checker results on every DOI just yet, but we couldn't wait to let you see what we've been working on. Link checker results are also available to DataCite Members via the [REST API](https://support.datacite.org/docs/api). 

## What does the link checker look for?
In addition to verifying that it can reach the URL found in a DOI's metadata, the link checker also looks for several characteristics that conform to [best practices for DOI landing pages](https://support.datacite.org/docs/landing-pages). Here is everything the link checker will look for and report on: 

* HTTP status code - Indicates whether the crawler could successfully reach the URL, and if not, why.
* Number and URL of any redirects - Indicates whether the crawler was passed through other URL's before it reached its ultimate destination. 
* Landing page - Was there a text landing page present at the URL? 
* Machine-readable DOI - Was there a DOI embedded in the landing page metadata that was tagged in a way a machine could recognize it as a DOI?
* Schema.org metadata - Was there [schema.org](https://schema.org) metadata found on the landing page? This is especially important for exposing your metadata to other services, like [Google Dataset Search](https://support.datacite.org/docs/how-do-i-expose-my-datasets-to-google-dataset-search). 

![Link checker results showing issues to investigate](/images/uploads/linkchecker-issues.png)

We're hoping the new link checker service will be valuable for helping you care for your DOIs. You can read more about link checker in our [support article about the service](https://support.datacite.org/docs/link-checker). Feel free to send us your questions, comments, and suggestions at [support@datacite.org](mailto:support@datacite.org).
