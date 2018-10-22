---
layout: post
title: The DataCite API Landscape
author:
  - rdasler
date: 2018-08-31T07:40:57.614Z
tags:
  - featured
image: /images/uploads/clouds-country-daylight-371633.jpg
doi: 10.5438/vj9e-sk62
---
Over the years we’ve developed a number of services to help our members create, manage, and discover DOIs. We’ve added features and functionality along the way that we hope helps our members and the public do useful things with DOIs. But underneath it all, the APIs at the heart of our services weren’t seeing much change. Our initial APIs are now seven years old, and even our more recently launched REST API has already celebrated its second birthday. 

2018 has been all about change. We’ve been working on an ambitious project to consolidate our various APIs into one service point, so that it’s simpler to know where to go and what to do to take advantage of DataCite services. This is a complicated project with many moving parts, and we know a lot of you have been looking for guidance about understanding and navigating our API transition plans. We’re pleased to say that a new API is almost here. In this blog post, we outline the current state of our API landscape, so you know where things stand, and next month we’ll follow up with a post that has more details about the new API consolidation and tells early adopters how they can get on board.  

## What is an API?

But first, some of our members might be wondering what these API things even are. Essentially, an API (or Application Programming Interface) is a way for you to interact with our services. It sits between you and the bulk of DataCite’s codebase and specifies what kinds of information you can ask for and how you should do the asking. When you want to retrieve metadata for a DOI, or create a new DOI, or query for information about DOIs collectively (like finding everything authored by Smith), you send a request to the API in a specific way, and it returns the information. 

An API endpoint is your gateway to accessing the API. In this post, we’re providing the URL as the API endpoint. This is the URL to which you would send your requests. More details about how to send those requests can be found in our support pages (https://support.datacite.org). 

## Consolidated API

Over the past few months, we have developed new APIs to manage providers, clients and prefixes. As we carried out this work, we realized that the two main APIs we had (one for DOI registration and one for querying and retrieving DOI metadata) needed to be become part of a larger API strategy. We needed to standardize and consolidate the various API endpoints, with the ultimate goal to have a single consolidated API that you can use for anything you want to do with DataCite. 

From the perspective of fetching metadata, this work is already well underway. Our REST API handles requests from anyone for information about metadata for DataCite DOIs. Any new services related to looking up information about DOIs and their metadata will be incorporated into this API. For example, we’ve recently begun incorporating information from the Event Data store developed in collaboration with Crossref, so it will now be possible to retrieve information around “events” related to DOIs, such as citations. As the Event Data store grows, so will your ability to retrieve additional types of event information, all from the same API. 

From the perspective of creating DOIs, things are a bit more complicated. When we launched DOI Fabrica, we entirely rewrote the underlying API, and this new API is already handling our DOI creation secretly behind the scenes. The DOI creation functions of the DOI Fabrica API have been merged into the same API endpoint as the metadata fetching functions of the existing REST API, and everything you want to do with DOIs can now happen in the same place. There are still a few last documentation tasks we need to sort out before we officially open the floodgates for DOI creation over the new consolidated API, but we’ll be ready to go next month. Stay tuned for our blog post about how early adopters can get on board. 

## Slow and Steady Wins the Race

So DataCite is launching a new API. Very soon. Before you panic about what this means for your existing services, let us assure you that we understand that transition is costly. We know resourcing for big tech changes takes a while and needs to be handled over a long period of time. When we say we’re launching a new API, we’re really just making a new option available for you, not dictating that everyone has to switch immediately. 

We currently have two APIs for DOI creation, the MDS API and the EZ API. We plan to support both of these for quite some time (on the order of years), so you have plenty of time to transition to the new API at your own pace. 

## MDS API - Endpoint https://mds.datacite.org

This is the API that most of you are using for DOI registration at the moment, whether you have a homegrown integration or are working through third party repository software. We’ve recently made a number of improvements to the MDS API to better align its functionality with that of the DOI Fabrica web interface and the EZ API, our EZID-compatible API. You can now accomplish the same DOI creation and management functions across all three services, including the auto-generation of DOI names, the management of DOI states like Draft, Registered and Findable, and the submission of metadata in formats other than DataCite XML, e.g. schema.org JSON-LD.

At this point, we have no concrete plans to retire the MDS API. We’re going to let the dust of 2018 API change settle and then start thinking about timelines. But rest assured, we will support the MDS API for the next several years.

As a side note, we'll remind our members that we're already in the process of phasing out the MDS web UI, the website that for many years was our primary web portal for manual DOI services. DOI Fabrica accomplishes the same tasks as the MDS web UI, and your login credentials are the same for both services. The MDS web UI will be shut down on November 1st, 2018, but this has nothing to do with the MDS API, which will continue functioning like always. It is perfectly safe to stop using the MDS web UI for your manual DOI creation while continuing to use the MDS API for your automated DOI creation. If you have any questions or concerns about the MDS web UI transition or the MDS API transition, please let us know by contacting support at <mailto:support@datacite.org>. 

## EZ API - Endpoint https://ez.datacite.org

The EZ API is an EZID-compatible API that was developed to help facilitate a smooth transition for our members coming from the EZID service provider. Users can make the same API calls they used to make to EZID, just using the DataCite endpoint instead. Most of our members who transitioned from EZID either switched to the MDS API in the process or use DOI Fabrica as their primary method of creating and managing DOIs. 

When we launched the EZ API in March 2018, we said it would be around for at least two years, and we’re sticking to that promise. 

If you have any questions or concerns about the EZ API transition, please let us know by contacting support at <mailto:support@datacite.org>.

We hope this post helps to explain a bit more about our long-term strategy with regards to our APIs and where things stand now. Throughout the launch of our new API and any slow and steady transitions, we’ll be here for you, so don’t hesitate to reach out.
