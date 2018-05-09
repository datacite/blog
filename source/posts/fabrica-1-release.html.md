---
layout: post
title: "DOI Fabrica 1.0 is Here!"
author: daslerr
date: '2018-05-09'
tags: 
- featured
image: https://blog.datacite.org/images/2018/05/fabrica-homepage.png
doi:
---

The DataCite team is pleased to announce the release of DOI Fabrica 1.0! DataCite Providers and Clients can check it out at [https://doi.datacite.org]. 

DOI Fabrica is the new web interface for DataCite DOI registration services. With DOI Fabrica, you can create and manage DOIs right from your browser without needing to use an API. This first release of DOI Fabrica includes the functionality of the old MDS web interface, plus several helpful new features. 

DOI Fabrica allows you to create DOIs via file upload, similar to the old Metadata Store (MDS) interface. But unlike the MDS interface, DOI Fabrica will now validate the URL and metadata you enter, helping you to avoid errors. DOI Fabrica will also auto-generate DOI names for you according to an [algorithm](https://github.com/datacite/base32-url) designed to help avoid name duplication. You're now also able to edit the metadata directly in the metadata field, and you can upload schema.org JSON-LD, Citeproc JSON, Crossref XML, bibTeX, or RIS files in addition to the regular DataCite XML files. 

![New DOI creation features in DOI Fabrica 1.0](/images/2018/05/fabrica-highlights.png)

A big change for DOI creation in DOI Fabrica is the introduction of states for DOIs. When creating or updating a DOI, you're now required to select one of three states for that DOI: Draft, Registered, or Findable. 
* A Draft DOI is completely private. You can only see it within DOI Fabrica. For those Clients coming from EZID, this is similar to EZID's "reserved" DOIs. 
* A Registered DOI is registered with the global handle server, so it will resolve, but it won't be indexed in DataCite Search. This means someone can only find it if they know the exact DOI. 
* A Findable DOI is registered with the global handle server and it's indexed in DataCite Search. It is fully public and able to be found and resolved by anyone. 

More information about states is available on our [support site](https://support.datacite.org/docs/about-states-in-datacite-doi-fabrica). 

Release 1.0 of DOI Fabrica also introduces some additional management features, such as showing Clients all in one place in the Provider dashboard and using the Provider settings to feed the information on the DataCite Members web page. Of particular interest is the improved [prefix management](https://support.datacite.org/docs/datacite-doi-fabrica-for-providers#section-provider-dashboard-prefixes) for Providers. Providers can now view all of their assigned prefixes via the Provider dashboard, assign new prefixes to Clients, and even transfer prefixes between Clients in just a few clicks. Best of all, Providers no longer need to contact DataCite when they run out of prefixes! It's all handled in DOI Fabrica. 

![Provider prefix management in DOI Fabrica 1.0](/images/2018/06/fabrica-prefixes.png)

With all that's included in the DOI Fabrica 1.0 release, we should take a moment to discuss what's not included. We know that many of you have been waiting on a DOI creation form with individual fields. After listening to all your feedback during our testing phase, we decided the fielded form needed a bit more work in order to be just right. Instead of including it in release 1.0, the form will come out in its own separate follow-on release on May 30. We appreciate your patience, and we're looking forward to sharing the results with you soon. You can see what else is planned for DOI Fabrica, along with our other projects, on our [roadmap](https://datacite.org/roadmap.html).

Now that DOI Fabrica is on the scene, it’s about time for the MDS web interface to step down. We’ll continue to support the MDS web interface through November 2018, but do please think about switching to DOI Fabrica soon. The MDS API will remain unchanged, with no plans to retire it any time soon. 

The new features of DOI Fabrica were discussed in detail during our last DataCite Open Hours on May 2. The [recording](https://tinyurl.com/y85zt7hf) and the [slides](https://tinyurl.com/yb9ddyrp) for that meeting are available. The source code for the DOI Fabrica [backend](https://doi.org/10.5438/8gb0-v673) and [frontend](https://doi.org/10.5438/cxe5-rg55) are available in GitHub. And of course, you can always contact [support@datacite.org](mailto:support@datacite.org) with your questions and feedback. 
