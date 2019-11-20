---
layout: post
title: 'Fabrica Update: Introducing Repositories'
author:
  - rdasler
date: 2019-11-20T16:38:37.577Z
tags:
  - featured
---
Over the course of 2019, DataCite has been working on updates to our member model, as we explained in our [blog post](https://doi.org/10.5438/gk09-ba24) back in September. As a consequence, we've made some changes to Fabrica to better reflect the terminology and vision of the revised member model. You'll now see that the term "Client" has been replaced with the term "Repository". 

![example of repositories terminology](/images/uploads/screenshot-2019-11-08-at-08.51.10.png "Repository terminology in action in Fabrica")

This is largely a cosmetic change, but there's a strategy behind it. We see a "Repository" as an entity that is responsible for making the content behind DOIs available. Our members interpret this in a variety of ways, from institutional repositories to journals, and it was tough to pick a one-size-fits-all word to describe this. We went with “Repository” because the vast majority of content described by DataCite DOIs is hosted in repositories. Describing the repository that is hosting the content described by DOIs is becoming increasingly important. Not only does this change allow us to integrate the DOI registration service more closely with the DataCite re3data service, but more generally will allow us to add relevant filters such as repository certification in our DOI search. 

To go along with this emphasis on the Repository container, we've also taken the opportunity to add a few fields to the Repository settings. You can now optionally specify which software your repository uses, what kind of repository it is (such as disciplinary or governmental), and whether it has a certificate (like CoreTrustSeal). And if you paste in your repository's re3data ID, we'll auto-populate fields like these with info from re3data.

![new repository settings fields](/images/uploads/screenshot-2019-11-06-at-10.44.55.png "New settings for Repositories in Fabrica")

We recognize that we have a number of members whose "Repositories" are really some other system that hosts the content described by DOIs and DOI metadata. For our members who are publishing journals, we've added a field to the Repository settings to let you specify that your "Repository" is really a periodical. This will allow you to enter periodical-specific information, like an ISSN. 

The next part of aligning the Fabrica interface with the updated member model will be a better structure for our Consortium members that will more accurately reflect their internal hierarchy. This update will happen soon, and we’ve already begun contacting the Consortia who will be affected. 

As always, if you have questions, comments, or concerns, feel free to contact us at <mailto:support@datacite.org>, and we'll help you out.
