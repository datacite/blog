---
layout: post
title: 'Tip: Getting data into Impactstory but not your ORCID profile'
author: larsjuhljensen
date: 2016-05-01
tags:
- orcid
- impactstory
- thor
---
*The following is a guest post by Lars Juhl Jensen, cross-posted from his [blog](https://larsjuhljensen.wordpress.com/2016/05/01/tip-getting-data-into-impactstory-but-not-your-orcid-profile/).*

I use [Impactstory](http://impactstory.org/) to track altmetrics for my publications. I believe they did the right thing by not asking me to maintain yet another online profile and instead building upon existing infrastructure. I also use [figshare](http://figshare.com/) to publish open datasets and wanted to get Impactstory to track these too.

As is often the case, configuring the complex software infrastructure to do what I wanted was nontrivial. Because Impactstory does not maintain a separate user profile, the only way to get data into Impactstory is to add it to your [ORCID](http://orcid.org/) profile. This took me much longer to figure out than it should have due to misleading, outdated documentation. In fact, I would not have succeeded without the help from [Martin Fenner](http://orcid.org/0000-0003-1419-2405), who taught me about the missing piece of the puzzle, which is [DataCite](http://www.datacite.org/). Once you know what to do, it is reasonably simple: from your ORCID profile, you choose to add and link works from DataCite, where a simple search should find all your datasets in figshare. Afterwards, you have to change the privacy settings for them in your ORCID profile, and they will show up in Impactstory.

This still left me with one challenge, though. Uploading a dataset on figshare can result in numerous DOIs, since both the dataset per se and the individual files are assigned DOIs, each with and without a version number in the DOI. Since I cannot control which DOIs people cite, I must associate all of them with my ORCID to get accurate tracking in Impactstory. However, doing so will pollute the list of works on my public ORCID profile with hundreds of partially redundant DOIs of data files. This is problematic because my ORCID profile also serves as an online curriculum vitae, with the list of works being the publication list.

It turns out that there is a small inaccuracy in the Impactstory documentation: when they write that you must change the privacy setting to “public”, they mean “public” or “trusted parties”. Therein lies the solution to my problem: I set privacy to “public” for the works that I want shown on my ORCID profile and “trusted parties” for the works that I only want tracked in Impactstory. That allows me to get all the data into Impactstory via ORCID but at the same time have a clean, non-redundant publication list on my ORCID profile.
