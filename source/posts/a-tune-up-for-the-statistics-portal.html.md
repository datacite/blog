---
layout: post
title: A Tune-Up for the Statistics Portal
author:
  - rdasler
date: 2019-04-29T16:27:50.212Z
tags:
  - featured
image: /images/uploads/ce66bf0-screenshot_2019-04-23_at_10.24.32.png
doi: 10.5438/vznz-vj55
---
We’ve previously shared with you our plans to migrate all of our services from Solr to Elasticsearch. (See for example our 2019 preview [@https://doi.org/10.5438/bckb-qy95] or how we’ve used Elasticsearch to make an improved DataCite Search [@https://doi.org/10.5438/vyd9-ty64]. Elasticsearch is already a key component of [DOI Fabrica](https://doi.datacite.org) and of [DataCite Search](https://search.datacite.org), and we’re in the process of bringing it to our other services, too.

To that end, we’ve updated the DataCite Statistics portal, our registration and resolution statistics portal, which sits at <https://stats.datacite.org>.

![Updated DataCite Statistics Portal](/images/uploads/ce66bf0-screenshot_2019-04-23_at_10.24.32.png "Updated DataCite Statistics Portal")

At this point in time, we haven’t changed the core functionality of the portal. You can still see DOI registrations by provider, client, or prefix for either all time, a given year, or a particular month. And you can still see the top 10 DOI resolutions for each client. What has changed is the way this information is indexed and searched behind the scenes. While this may not seem like big news for you, it means that DataCite is one step closer to our goal of simplifying our services. Having services that are simpler to maintain means we can spend more quality time developing new stuff. And that’s a win for everyone. 

While the primary purpose of this update wasn’t to add new functionality, we couldn’t resist sneaking in a few tweaks. You can now use an API to retrieve all the information displayed in the DataCite Statistics portal. You can also download a CSV of information from the portal, filtered how you like. (See the [DataCite Statistics documentation](https://support.datacite.org/docs/datacite-statistics) for more details on how to use the portal.) 

![Download a CSV from the DataCite Statistics Portal](/images/uploads/01ff48c-screenshot_2019-04-29_at_08.26.14.png "Download a CSV from the DataCite Statistics Portal")

Also, now that the DataCite Statistics portal is running off Elasticsearch just like DOI Fabrica and DataCite Search, the numbers shown in all three services will be more in sync. 

Those of you who follow us pretty closely may be wondering why the registration and resolution statistics have their own portal while usage statistics are now sitting snugly in DataCite Search. And why aren’t any of these statistics in Fabrica? What gives? 

This is where we’d like to hear from you. We’ve updated the current DataCite Statistics portal because it needed a back-end tune-up, and we put usage statistics in DataCite Search so they’d be public. But we have also hinted at one day combining all of DataCite services into a single platform. What do you think? Where would you most like to see statistics about your DOIs? Which statistics are you the most interested in? Let us know by leaving feedback on our [new and improved roadmap](https://datacite.org/roadmap.html), or by dropping us a line at <mailto:support@datacite.org>. 

## References
