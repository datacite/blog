---
layout: post
title: To better understand research communication, we need a GROUPID (group object
  identifier)
author: danielskatz
date: '2016-04-17'
tags:
- metadata
- software citation
doi: 10.5438/0000-08JF
published: true
accession_number: MS-274-3927-0265
---
*The following is a guest post by Daniel S. Katz, cross-posted from his [blog](https://danielskatzblog.wordpress.com/2016/04/17/to-better-understand-research-communication-we-need-a-groid-group-object-identifier/).*

After a number of general discussions in the research communication community, mostly focused on software citation, and then a few separate discussions with Anita Bandrowski and Martin Fenner, it’s become clear to me that we need something like a group (perhaps hierarchical) object identifier (GROUPID), which is somewhat different than a DOI, or at least different than how DOIs are commonly used today. I’m thus trying to document some uses cases and their associated requirements, with the hope that this will be interesting to others who might want to discuss what we can do to address the use cases.READMORE

Some uses cases are:

* A researcher wants to cite a software project, meaning a collection of releases of that software, not one specific release. The researcher can cite the GROUPID itself.
* A funder wants to collect citations to a project that they funded. The GROUPID can be queried to find the individual DOIs that it contains.
* A contributor to a software project wants to collect citations to the versions of the software that she contributed to. The GROUPID can be queried with a date range to find the individual DOIs that it contains and that have registration dates that match that date range.

The requirements that come out of these use cases are:

* A GROUPID can be cited, and like a DOI, has metadata, and points to a landing page.
* A GROUPID is a container, which by default defines a parent-child relationship to the
  contents of the container, though other relationships might also be possible.
* A GROUPID can be queried to return the contents of the container, with optional
  parameters to return a subset of the contents that match those parameters.

## Discussion

Anita believes that RRIDs (see [https://www.force11.org/group/resource-identification-initiative](https://www.force11.org/group/resource-identification-initiative) and [https://scicrunch.org/resources](https://scicrunch.org/resources)) can be used to solve this need. I’m less sure, because this is only somewhat a naming issue but also a querying/relationship issue, and RRIDs just solve the naming issue. In addition, I would prefer that we use the same type of index for both the individual objects and the groups, which implies to me that DOIs are the right thing to use.

(Anita also points out that identifiers of any kind, whether GROUPIDs, DOIs, etc., need an organization standing behind them that makes sure that they are accurate and unique, and to make sure they resolve. Specifically, this means that researchers should not mint their own DOIs, but should be sure that this is done by an institution that has considered these issues, including persistence.)

Martin Fenner suggests “DOIs support this functionality already, and there are many examples of DataCite and Crossref DOis referring to multiple objects. One of many examples is what Dryad is doing with ‘DataPackages’ and ‘DataFiles’.” See the ‘What is a data package?’ and ‘What is a Dryad DOI?’ in [http://datadryad.org/pages/faq](http://datadryad.org/pages/faq). In terms of naming and relationships, this is probably sufficient. However, the real problem that remains is how indexing and counting is done.

In fact, Martin says, “I see this more as a feature that should be supported by the persistent identifiers in general (and several support this), rather than a need for a new specific identifier,” and I’m fairly sympathetic to his point-of-view.

I think that there are needs for understanding scholarly communication that are unmet by our current system, though how best to meet these needs is much less clear.  The concept of a GROUPID is one idea, but it might be met through expanded use of existing identifiers.

We probably need a fair amount of community discussion about this; I hope this gets a few people interested enough that they start this discussion.
