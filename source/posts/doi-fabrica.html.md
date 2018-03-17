---
layout: post
title: Announcing DataCite DOI Fabrica
date: '2017-10-18'
author: mfenner
tags:
- doi
- mds
- featured
image: https://blog.datacite.org/images/2017/10/re3data.png
doi: 10.5438/g7q1-7t10
---

Today DataCite is launching [DOI Fabrica](https://doi.datacite.org/), the next generation of DataCite’s DOI registration service, replacing the Metadata Store ([MDS](https://mds.datacite.org/)). This is the biggest and most important product release DataCite has done in many years, and the result of nine months of hard work by the entire DataCite team.READMORE

DOI registration is the core service that DataCite is providing to its members and the data centers they work with. The requirements for how DOI registration should work have changed significantly since the Metadata Store was originally launched in 2011. We began the DOI Fabrica project in early 2017 by collecting, categorizing, and prioritizing user stories for what is needed from the DataCite DOI registration service. Central to this activity was continuously engaging with our members and the DataCite community to make sure their needs were met. As part of this work, we rethought how we work with user stories and how develop our product roadmap (more details in [this](https://blog.datacite.org/roadmap/) blog post), and you can find all user stories directly relevant for DOI registration [here](https://www.datacite.org/user-stories.html?=&category=create#how-to-provide-feedback).

Once it was clear that significant work was needed to improve the existing DOI registration service, and that incremental changes of the Metadata Store wouldn’t be enough, we thought about how to best approach the development of a new service. The following principles guided us:

* Implement and constantly improve a feedback process that can guide our development. In addition to the user stories and roadmap we
  also worked closely with the [DataCite Services and Technology Steering Group](https://www.datacite.org/steering.html) that was launched in September 2016.
* Do gradual, small changes as much as possible to reduce the risk of failures or significant delays – we have all experienced this with scholarly infrastructure projects. DOI Fabrica focusses on changes in the user interface, and we have left the MDS API unchanged for now.
* Re-architect the existing DOI registration service into smaller, loosely coupled services to simplify maintenance and improvements. DOI Fabrica consists of one frontend service, one authentication service, and two APIs (the legacy MDS API plus a new API for managing members and data centers).
* Make it easy to run the code in development, deploy code changes and receive automatic error messages. This
  includes continuous integration tools for automatically running tests after commits to the code repository.
* Build user interfaces that engage users, and provide clear documentation and mechanisms to provide feedback.

What do all of the above have in common? They make the product development process faster, broken down into smaller steps, and more focused on what our members and users really care about. The most important feature of DOI Fabrica is thus the ongoing development it enables going forward, and you can expect important new functionality in the next few months (check our [roadmap](https://www.datacite.org/roadmap.html) for details and/or if you want to provide feedback). But of course, this first DOI Fabrica release comes with functionality directly addressing the needs identified in the user stories collected earlier this year. We want to highlight how we addressed five of these user stories:

### [Single Sign-on](https://github.com/datacite/datacite/issues/132)
*As a member or data center, I want a single username/password to access all DataCite services, so that I don't spend extra time managing access.*

We have consolidated all login options for users into a single service, [DataCite Profiles](https://profiles.datacite.org/), and defined roles and permissions for DOI Fabrica. To not break existing integrations, the MDS API will continue to use the old username/password authentication.

### [Powerful MDS Admin User Interface (UI)](https://github.com/datacite/datacite/issues/56)
*As a member, I want a powerful admin UI (prefix transfer from one datacenter to another, editing/hiding the welcome email to data centers, expand the length of the field “domain” etc.) to manage all my data centers so that I reduce admin costs and can track changes.*

All functionality relevant for DOI registration (including management of data centers and prefixes) is now available via API calls. DOI Fabrica provides a powerful administrator UI that, for example, allows members to automatically fetch new prefixes from the DataCite pool when all their prefixes are in use, instead of sending an email to DataCite support.

### [Link checker reports](https://github.com/datacite/datacite/issues/11)
*As a national library, I want services that check DOI resolution (broken links), so I can keep my responsibilities of persistence.*

![](/images/2017/10/link-checking.png)

DOI Fabrica includes a simple link checker that is particularly useful during DOI registration. A more robust link checker is on our [roadmap](https://www.datacite.org/roadmap.html) for the coming months.

### [Reporting tool](https://github.com/datacite/datacite/issues/52)
*As a member, I want a reporting tool, so that I can stay informed about my DOIs.*

![](/images/2017/10/stats.png)

While future DOI Fabrica releases will provide much more detailed reporting, with this release members will see a dashboard that summarizes the numbers of data centers (clients) they work with, and the number of DOIs registered per year.

### [DOIs per discipline](https://github.com/datacite/datacite/issues/68)
*As a national library, I want to see how many datasets exist per discipline, so that I can decide about resourcing.*

![](/images/2017/10/re3data.png)

We are still a long way from understanding how many DOIs for research data exist per discipline, but we took an important first step by enabling the linking of data centers to [re3data](https://www.re3data.org), allowing us to automatically pull in information about the disciplines covered in any particular repository.

With so many changes in DOI Fabrica we couldn’t include everything we wanted in the first release, and one functionality in particular has to wait for the next release in six weeks: DOI registration. We need to first address technical dependencies before this can be implemented, and rather than delaying the first release of DOI Fabrica, we decided to focus on functionality important for our members, and to add DOI registration via XML upload and web form in the next release. We look forward to your feedback and to suggestions on how we can improve [DOI Fabrica](https://doi.datacite.org).
