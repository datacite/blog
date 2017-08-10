---
layout: post
title: Data-Driven Development
author: mfenner
date: '2015-08-03'
tags:
- infrastructure
doi: 10.5438/0000-044N
published: true
accession_number: MS-132-3217-1472
---
This week I start as the new DataCite Technical Director. While I get up to speed with existing DataCite services and infrastructure, and we start to launch new services (e.g. this blog), this is also a good time to communicate the overall approach I am taking. I like to call it **Data-Driven Development**, or **DDD** as we all love acronyms.READMORE

![Blick auf Hannover [@https://doi.org/10.3932/ETHZ-A-000159123]](/images/2015/08/Fel_048248-RE-2.jpg)

## Definition
Data-Driven Development and related terms are in use in several contexts, in particular [economics](http://reports.weforum.org/data-driven-development/), and [programming](https://en.wikipedia.org/wiki/Data-driven_programming). The term sounds similar to [test-driven development](https://en.wikipedia.org/wiki/Test-driven_development) and [behavior-driven development](https://en.wikipedia.org/wiki/Behavior-driven_development), two related software development processes. [Business intelligence](https://en.wikipedia.org/wiki/Business_intelligence) and [data science](https://en.wikipedia.org/wiki/Data_science) are of course closely related. My definition is as follows:

> We develop and maintain our services based on data.

This shouldn't come as a surprise as DataCite's mission is **Helping you to find, access and reuse data**. And my last job at the Open Access publisher [PLOS](http://plos.org) was all about [collecting and presenting data](https://doi.org/10.1371/journal.pbio.1001687) about the reuse of scholarly articles (citations, downloads, social media mentions, etc.). But here I mean **data** in a much broader sense.

## Product Development

While the overall strategic direction is determined by the Board together with the DataCite working groups and members, we can collect data that help with decisions in product development, for example

* service monitoring (see below): how are our services used over time, are there any components that are particularly popular, etc.
* [user feedback](https://www.uservoice.com/): ideas, feedback, [A/B testing](https://www.optimizely.com/ab-testing/)
* [bug reports](https://github.com/blog/1866-the-new-github-issues)
* [discussion boards](http://www.discourse.org/) and [direct group messages](https://slack.com/is): related to the last two points, but more allowing a more open discussion
* community events

Compared with the next two sections, tools for data-driven product development are less commonplace (unless I missed them, in which case please provide feedback).

## Software Development

The data generated during software development are increasingly made available through automated tools. We can

* get detailed information out of the [version control system](https://github.com/datacite)
* check for passing and failing tests in [continuous integration servers](https://travis-ci.org/)
* check [test coverage and overall code quality](https://codeclimate.com/)
* [check for consistent coding style](https://houndci.com/)

## Service Monitoring

Any web-based service can and should be monitored for

* [crashes and other serious errors](https://bugsnag.com)
* [server load](http://newrelic.com/), [server outages](https://www.pingdom.com/) and [internal server problems](https://www.nagios.org/)
* [server traffic](http://www.google.com/analytics/), including traffic to particular pages, percentage of mobile and non-English users, etc.
* specific monitoring for the services you are offering, e.g. in the case of DataCite [number of DOIs registered](http://stats.datacite.org/) (broken down by data center), number of DOIs with specific metadata (e.g. ORCID identifiers for creators and funding information), and number of DOI resolutions (tricky because there is no easy way to filter out bots)
* user-generated feedback (see section product development)

## Communication

We don't want to stop at collecting all these data, we also need a strategy for providing them to the DataCite Board, DataCite working groups, DataCite members and data centers, DataCite staff, and everyone else who cares about these data. The default should be open, exceptions are mostly data that would raise privacy or security concerns, e.g. IP addresses in usage stats. Most of the services mentioned in this post are open for everyone to look at.

## Synthesis

Good data-driven development should not only collect lots of data and make them available, but we also need to aggregate the information in meaningful ways. Service monitoring is a good example where staff needs to understand exactly what is going on, but the typical DataCite user only cares about whether all services are running as expected. A [status dashboard](https://status.github.com/) would be a good solution here.

The data we are generating also need to be put into the broader context. We need

* the DataCite Board to use them for strategic planning
* to provide these data to the DataCite working groups to feed into their work (e.g. stats on what metadata are submitted by data centers for the [Metadata Working Group](https://www.datacite.org/tags/metadata-working-group)
* the DataCite staff to integrate them in their work (e.g. the Communications Director utilizing the website usage stats)
* these data to adapt the software development roadmap and service infrastructure

## Implementation
Of course I am aware that this is an ambitious agenda, in particular since DataCite is a small non-profit that has limited staff and financial resources. But I don't think that data-drive development should be left to for-profit organizations and/or to organizations of a certain size. There are several things DataCite can do:

* implement DDD practices over time, starting with one service and one aspect
* use service providers wherever it makes sense ([there is a future where you yourself are running less servers](http://thenewstack.io/new-stack-mitchell-hashimoto-containers-no-containers-one-question-2015/)). This means anything that is not core to the DataCite mission and where the service provider is better and/or cheaper than what you could do internally. This evaluation can of course change over time
* collaborate with other scholarly non-profits on infrastructure, including DataCite members and data centers, and other persistent identifier providers such as CrossRef and ORCID

## References
