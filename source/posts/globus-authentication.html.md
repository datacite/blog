---
layout: post
title: globus authentication
author:
  - mfenner
date: 2019-10-14T05:57:31.618Z
tags:
  - authentication
  - globus
---
Access to some DataCite resources and services requires authentication so that DataCite knows who is making a request. This includes Fabrica, our DOI registration service that requires a member account, but also our integration with ORCID in the Profiles service, where researchers authenticate with us to allow us to send information about content with DataCite DOIs authored by them to their ORCID record. Authentication needs to be secure, not allowing access by the wrong people, but also practical, as otherwise poor password behavior with reduced security might result, as highlighted in the 2019 update of the NIST guidelines which set the industry standard. With this in mind, we have two main goals for improving authentication with DataCite services: a) consolidate authentication into a single service to simply access to all secured resources, and b) phase-out of institutional logins in favor of more secure personal accounts.
