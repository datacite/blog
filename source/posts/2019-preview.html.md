---
layout: post
title: DataCite 2018 Wrap-up and 2019 Preview
date: '2018-12-18'
author: 
  - rdasler
tags:
  - datacite
doi: 10.5438/bckb-qy95
---

# First, a big pat on the back for last year
2018 saw a lot of changes at DataCite. We went from 5 employees to 8, and we released several new things, both visible and not-so-visible. Here are the highlights from a product release perspective. 

## DOI and Metadata Registration
In May, we launched DOI Fabrica, our new DOI creation and management platform to replace the MDS web interface. Fabrica duplicated the old functions of MDS and added some new features, including the addition of a metadata form. But the most exciting things about Fabrica are what happened under the hood. Spending time on some significant architecture changes has really helped us set the stage for 2019, when we’re planning more updates to make Fabrica and your DOI creation and management experience even better. 

## API Consolidation
One of these significant architecture changes was our first steps toward a consolidated API. A shiny new API runs Fabrica, and that API is now also ultimately what powers the MDS and EZ APIs as well. While those two APIs are still sticking around for the next several years, we’ve begun the process of crafting a new consolidated API that takes the DOI querying functions of our previously launched REST API and merges them with the DOI creation capabilities of the API under Fabrica. In addition to gathering all your DOI tasks in one place, this new API also has full JSON support, meaning you don’t have to use XML anymore if you don’t want to. The new API is already available in the test system for you to play with, and it will be live in production after the holidays. 

## Improving Search
Another big change in the works is our large-scale migration from Solr to Elasticsearch. We’re essentially changing the major component that makes our search capabilities work. This is a big job, and mostly a behind-the-scenes change, but what it means for you is less time between DOI creation and DOI indexing, as well as more flexible search options. The first phase of this plan is slated to be complete before the end of the year, when we’ll be bringing Elasticsearch to Fabrica, resulting in a faster DOI search with more filters. Elasticsearch will be expanding its way into our other services during 2019. 

## Test Accounts
We’ve had some ups and downs with our test accounts during 2018. Testing DataCite services have always been a bit confusing, and in the spring we attempted to solve this by shifting everyone to “demo” accounts, which were accounts in our production system that had restricted capabilities. This turned out not to fit the use cases of many of our heaviest test users, and it wound up making testing even more confusing because you were only able to test certain functions but not others. This is why, as of late October, we’ve backtracked on our test account policy and returned to having a separate production system and test system for our clients. We think this will ultimately make things less confusing because having two entirely different systems means that real is real and test is test and nothing between shall meet. You can do everything in the test system that you can do in the production system (so no more restricted accounts), but in an entirely safe sandbox environment. We understand the flip-flop is a headache, and we thank all of you for your patience and understanding as we carry out these transitions. 

# Next, a sneak peek of 2019
2019 is now on the horizon, and while we can’t tell you all of the details for the whole year just yet, we can give you a high-level sneak peek of things we think will be important for DataCite and for our users in the coming year, in the form of a few themes. 

## Theme 1 : Simplification
We want things to be simple for everyone. Simple for you to use, simple for us to maintain, simple to understand, and simple to build on. As part of this theme, we’ll be continuing the API consolidation and Elasticsearch migration work we began in 2018. We’ll be launching the new API just before 2018 closes, and we’ll be rolling Elasticsearch out to more of our services. We’re also toying with the idea of combining all our services into a single platform, so we’ll be starting to explore that idea in 2019. Any resulting single platform would come much later. 

## Theme 2 : Make Fabrica Awesomer
Now that Fabrica has launched and has taken its basic shape, it’s time to work on improving it. The entire point of building a new platform was to make it one we could expand and embellish, adding features and tools that will make your DOI creation and management experience as pain-free and helpful as possible. We’ve already started down this path with the inclusion of our link checker service, which will very shortly be available in the test system for you to play with, and an improved DOI search, which will be rolled out as part of the Elasticsearch updates at the end of 2018. In 2019, we also want to add some metadata fields to the DOI creation form and add some additional features to help you with DOI management. Right now, we’re thinking we’ll start with improving fields related to author metadata, and we’ll focus on features related to improving updating and reporting. 

## Theme 3 : PID Graph
DataCite is involved in a lot of grant work out there in the PID, research data, and scholarly communications communities. Going into 2019, we’re going to be building services around the concept of the “PID Graph”, which is all about making multi-step connections between entities with PIDs, whether that involves better linking between existing PIDs or even creating new PIDs altogether. This is an idea that comes largely from one of our grant-funded projects, but touches on a number of other projects we’re working on. Case in point is the work we’ve done for supporting data repository usage reports as part of the [Make Data Count project](https://makedatacount.org/). We’ve brought these reports into our Event Data service and made several architectural updates along the way. Now it’s time to turn that body of information into a service and expose it in a more prominent way so our users can benefit. 2019 will also be the year of [ROR](https://ror.community), as we work to get an open, community-led identifier for research organizations off the ground. 

# We want to hear from you
We’re excited about where 2019 will lead us, but we want to make sure you are too. We welcome your feedback on our product directions and priorities. As always, if you have questions or concerns, please let us know. You can contact [support@datacite.org](mailto:support@datacite.org), or [get involved with us on GitHub](https://www.github.com/datacite/datacite), or just stop us in the hall at a conference. We’d love to hear from you. 
