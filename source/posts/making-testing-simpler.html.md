---
layout: post
title: 'Making testing simpler: our new approach to test accounts'
author:
  - rdasler
date: 2018-10-26T08:45:22.120Z
tags:
  - datacite
  - infrastructure
doi: 10.5438/6f6r-jf56
---
We frequently receive questions from our members and clients about our current approach to testing. Some of you have accounts in our test system, some of you have the "demo" accounts introduced earlier this year, and all of you have access to the test prefix 10.5072 as part of your regular production account. What's the difference? Which one are you supposed to use for what?

These different options seem to have generated unnecessary confusion and therefore we're streamlining our approach to test accounts. We want to make a clear distinction between when you're doing something real and lasting vs. something that's just a test. This means that moving forward there will be production accounts (for real stuff) and test accounts (for fake stuff). That's it. 

Your production account is an account in our production system. Everything you do there has the potential to be live. A Findable DOI resolves in the real world. Draft DOIs you make are still private, but they can be upgraded to Registered or Findable DOIs that are actually registered with the global handle server. 

Your test account is an account in a completely separate test system. Nothing you do there is or has the potential to be live. You have access to all the same functions as in the production system, but everything you do is only pretend. A DOI marked Findable in the test system is not actually resolvable in the real world, but it will mimic that functionality so you can see what it looks like.

Streamlining this leads to a few changes: 

1. Every Provider will receive a test account. This will allow Providers to create test accounts for their Clients to use. 
2. Demo accounts will be discontinued. If you currently have a demo account, DataCite staff will be contacting you individually throughout November to assign you a test account instead. 
3. The test prefix 10.5072 will be  discontinued. New users will not receive a test prefix as part of their production accounts during onboarding. For existing users, the test prefix will be officially removed from your production account in March 2019. This will give you time to adjust your workflows and request a test account to fulfill your testing needs. 

We hope that these changes will ultimately make testing DataCite services easier to understand. For more information on test accounts, see our newly updated documentation at <https://support.datacite.org/docs/testing-guide>. And if you have any questions or concerns, please contact us at support@datacite.org.
