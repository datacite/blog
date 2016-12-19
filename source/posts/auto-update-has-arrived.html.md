---
layout: post
title: Auto-Update Has Arrived!
author: mfenner
date: 2015-10-26
tags:
- orcid
- crossref
- thor
---
*This post has been cross-posted from the [ORCID blog](http://orcid.org/blog/2015/10/26/auto-update-has-arrived-orcid-records-move-next-level). We will follow up with a blog post later this week explaining the DataCite auto-update implementation.*

Since ORCID’s inception, our key goal has been to unambiguously identify researchers and provide tools to automate the connection between researchers and their creative works. We are taking a big step towards achieving this goal today, with the launch of [Auto-Update](http://orcid.org/blog/2014/11/21/new-functionality-friday-auto-update-your-orcid-record) functionality in collaboration with [Crossref](http://www.crossref.org/) and [DataCite](https://www.datacite.org/).

There’s already been a lot of excitement about Auto-Update: [Crossref’s recent announcement](http://crosstech.crossref.org/2015/09/orcid-auto-update.html) about the imminent launch generated a flurry of discussion and celebration on social media. Our own [tweet](https://twitter.com/ORCID_Org/status/647020600192581633) on the topic was viewed over 10,500 times and retweeted by 60 other accounts.

So why all the fuss? We think Auto-Update will transform the way researchers manage their scholarly record. Until now, researchers have had to manually maintain their record, connecting new activities as they are made public. In ORCID, that meant using [Search & Link](http://support.orcid.org/knowledgebase/articles/188278-link-works-website-user) tools developed by our member organizations to claim works manually. Researchers frequently ask,  “Why, if I include my ORCID iD when I submit a manuscript or dataset, isn’t my ORCID record “automagically” updated when the work is published?”

With the launch of Auto-Update, that is just what will happen.

**It might seem like magic but there are a few steps to make it work**:

* **Researchers**. You need to do two things: (1) use your ORCID iD when submitting a paper or dataset, and (2) authorize Crossref and DataCite to update your ORCID record. In keeping with our commitment to ensuring that researchers maintain full control of their ORCID record, you may revoke this permission at any time, and may also choose privacy settings for the information posted on your record.
* **Publishers and data centers**. These organizations also have two things to do: (1) collect ORCID identifiers during the submission workflow, using a process that involves authentication (not a type-in field!), and (2) embed the iD in the published paper and include the iD when submitting information to Crossref or DataCite.
* **Crossref and DataCite**. Upon receipt of data from a publisher or data center with a valid identifier, Crossref or DataCite can automatically push that information to the researcher’s ORCID record.
More information about how to opt out of this service can be found here: [the ORCID Inbox](http://support.orcid.org/knowledgebase/articles/665437-the-orcid-inbox).

![](/images/2015/10/graph.png)

### Why is this so revolutionary?

A bit of background, first. Crossref and DataCite, both non-profit organizations, are leaders in minting DOIs (Digital Object Identifiers) for research publications and datasets. A [DOI](http://www.crossref.org/01company/16fastfacts.html#sthash.o7NGwOnP.dpuf) is a unique alphanumeric string assigned to a digital object – in this case, an electronic journal article, book chapter, or a dataset. Each DOI is associated with a set of basic metadata and a URL pointer to the full text, so that it uniquely identifies the content item and provides a persistent link to its location on the internet.

Crossref, working with over a thousand scholarly publishers, has generated well over 75 million DOIs for journal articles and book chapters. DataCite works with nearly 600 data centers worldwide and has generated over 6.5 million DOIs to date. Between them, Crossref and DataCite have already received almost a half a million works from publishers and data centers that include an ORCID iD validated by the author/contributor.  With Auto-Update functionality in place, information about these articles can transit (with the author’s permission) to the author’s ORCID record.

Auto-Update doesn’t stop at a researcher’s ORCID record.  Systems that have integrated ORCID APIs and have a researcher’s ORCID record connected to that system -- their faculty profile system, library repository, webpage, funder reporting system -- can receive alerts from ORCID.  Information can move easily and unambiguously across systems.

This is the beginning of the end for the endless rekeying of information that plagues researchers -- and anyone involved in research reporting.  Surely something to celebrate!

**Questions you may have**:

#### Q. What do I need to do to sign up for auto-update?

You need to grant permission to Crossref and DataCite to post information to your ORCID record.  You can do this today by using the Search and Link wizard for DataCite available through the ORCID Registry or the DataCite [Metadata Search](http://search.labs.datacite.org/) page.  We also have added a new ORCID Inbox, so that you can receive a message from Crossref or DataCite if they receive a datafile with your iD, and you can grant permission directly. See [more on the ORCID Inbox](http://support.orcid.org/knowledgebase/articles/665437-the-orcid-inbox).

#### Q. Will Crossref and DataCite be able to update my ORCID record with already published works for which I did not use my ORCID iD?

No. The auto-update process only applies to those works that these organizations receive that include your ORCID iD. For previous works that did not include your ORCID iD, you will need to use the DataCite and Crossref Search and Link wizards to connect information with your iD.

#### Q. What information will be posted to my record?

With your permission, basic information about the article (such as title, list of contributors, journal or publisher) or dataset (such as data center name and date of publication) will be posted, along with a DOI that allows users to navigate to the source paper or dataset landing page.

#### Q. What if my journal or data center doesn’t collect ORCID iDs?

Ask them to!  This simple step can be accomplished using either the Public or Member ORCID APIs. Information about integrating ORCID iDs in [publishing](http://members.orcid.org/publisher-workflow) and [repository](http://members.orcid.org/repository-systems) workflows is publicly available.
