---
layout: post
title: Test prefix 10.5072 retiring June 1
author:
  - rdasler
date: 2019-02-28T18:04:27.038Z
tags:
  - featured
image: /images/uploads/retirement.jpg
doi: 10.5438/k0fm-jt50
---
At the end of last year, we made [significant changes](https://doi.org/10.5438/6f6r-jf56) to how testing works for our Members and Clients. We re-introduced a completely separate test system and did away with testing within the production account. We think these changes will ultimately make testing clearer and easier to understand. 

As part of these changes, we will be retiring the test prefix 10.5072 as of June 1. We hope that this blog post will help answer some of your questions. 

## Why is the test prefix going away? 

We want to create a hard division between your real DOIs and your test DOIs so that it's clear when you're doing something permanent and when you're not. Having a so-called "test prefix" in your production account that is incapable of creating any live DOIs contributes to the ambiguity and confusion that our test system updates were trying to solve. We have seen many cases where people inadvertently created temporary DOIs with the test prefix when they had intended to create live DOIs, and we want to help prevent these errors. 

## How should I create test DOIs instead? 

You should use one of the prefixes available to you in your test account to create DOIs. You can create test DOIs either in the test instance of DOI Fabrica (<https://doi.test.datacite.org>) or via one of our test APIs (https://api.test.datacite.org, https://mds.test.datacite.org, or https://ez.test.datacite.org). You'll use your test account credentials to log in to any of the test services. For more information, see our [testing guide](https://support.datacite.org/docs/testing-guide). 

## How do I get a test account?

Every DataCite Member and Client should now have a test account in addition to their production account. Clients that don’t yet have test accounts should contact their Providers to obtain test credentials. Any Providers that don't yet have test account credentials, please contact DataCite Staff at <mailto:support@datacite.org>.  

## I have a test account, but I don't see any prefixes in it. What do I do? 
If you are a DataCite Client and you do not already have prefixes assigned to your test account, please contact your Provider. Providers can learn more about assigning prefixes to their Clients in our [support pages](https://support.datacite.org/docs/create-a-client-in-fabrica-test#section-assign-a-prefix).

Thanks again for your patience and understanding as we work to make testing simpler and more straightforward. If you have any questions or comments, please don't hesitate to reach out to us at <mailto:support@datacite.org>.
