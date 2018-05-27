---
layout: post
title: Announcing the DataCite Profiles Service
author: mfenner
date: '2015-11-09'
tags:
- orcid
- thor
doi: 10.5438/15x1-bj6r
---
DataCite Labs today is launching the [DataCite Profiles](https://profiles.datacite.org) service, a central place for users to sign in with DataCite, using their ORCID credentials.READMORE

The first version of DataCite Profiles focusses on integration with ORCID via the **Search & Link** and **Auto-Update** services, described in a [previous blog post](/explaining-the-datacite-orcid-auto-update/). When users first sign-in, or when they go to their Settings page (accessible via the navigation menu in the upper right corner), they are presented with these two choices for adding their works to their ORCID record:

![ORCID Auto-Updated](/images/2015/11/Bildschirmfoto-2015-11-09-um-20-02-45.png)

**Auto-Update** still needs a bit more work and hasn't launched yet, but by signing up for the Profiles service users give DataCite permission to automatically update their ORCID record with works with DataCite DOIs that include their ORCID identifier.

**Search & Link** can be started from the Settings page and automatically searches the DataCite Metadata Store for any of the name variants given in the ORCID record.

Together with the Profiles service we are launching a new common navigation bar with links to the most common services and a place to sign in.

![Search](/images/2015/11/Bildschirmfoto-2015-11-09-um-20-14-22.png)

DataCite Profiles, [DataCite Labs Search](https://search.test.datacite.org) and the DataCite Labs Link Store already support this common layout, and other DataCite services will be added over time.

DataCite Profiles uses JSON Web Tokens ([JWT](http://jwt.io/)) to provide a single-sign on service for DataCite. JWT are an attractive alternative to setting up an OAuth provider for this use case. We use them to share additional profile information such as the user role across DataCite services.

The Profiles service currently does not provide authenticated access to other DataCite services such as the DataCite **Metadata Store**. And we currently only support sign-in via ORCID, not via other third-party providers such as Google, and not by username/password. As always we appreciate your feedback regarding issues and feature requests. Like all core DataCite services Profiles was written as an open source application, and can be found at [https://github.com/datacite/volpino](https://github.com/datacite/volpino).
