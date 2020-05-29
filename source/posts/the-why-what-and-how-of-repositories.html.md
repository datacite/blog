---
layout: post
title: 'The why, what, and how of repositories'
author:
  - hcousijn
  - rdasler
  - bdreyer
  - pvierkant
date: '2020-05-29'
tags:
  - DataCite
  - re3data
  - featured
---
DataCite is a community of libraries, research institutions, and data centers that house repositories. We often receive questions about how exactly we work with repositories, so we wanted to take this opportunity to answer your top 10 questions.



1. How does DataCite define a repository?

We define a repository as a service operated by research organizations, where research materials are stored, managed, and made accessible. A repository is a single unit and DataCite links the repository to information in re3data, where additional repository metadata are available.



2. Why are data repositories important to DataCite?

Data repositories provide services for research data including maintaining, preserving, and making it permanently accessible and citable. DataCite’s core activity is providing tools for DOI and metadata registration. DOIs are registered for content that is hosted in repositories (or in some cases journals or other containers for hosting content). Thus there is an important and natural relationship between the content (whether it is a dataset, text document, sample, etc.) and the repository. 



3. How do repositories fit in the DataCite member model?

Last year, we explicitly introduced the concept of repositories into the DataCite member model. The former client accounts in the DataCite systems are now repository accounts. 



Direct members can work with any number of repositories within their organization, which will all be visible in Fabrica. Consortia consist of multiple consortium organizations which can also work with any number of repositories within their own organization. More information about repositories and the member model can be found[ in this blog post](https://doi.org/10.5438/gk09-ba24).



4. Are repositories part of the DataCite fee structure?

Even though repositories are a key component of the membership model, they do not play a role in the [fee structure](https://datacite.org/feemodel.html). We charge our members based on the number of organizations and the number of DOIs. These are better aligned with our cost drivers and enable our members to follow best practices. 



5. How have repositories been implemented in DataCite Fabrica?

The account structure in Fabrica is set up to mimic the member model. Members, consortium leads, and consortium organizations each have their own accounts in Fabrica, and each member and consortium organization can have multiple repository accounts in Fabrica. From a technical perspective, the repository account is responsible for creating and managing DOIs. Having multiple repository accounts means that these DOI responsibilities can be distributed across your organization to whichever distinct entities need DOIs. The library’s image collection, your faculty papers archives, and a research institution on your campus might all have their own repositories with their own DOIs and personnel, and therefore they would warrant their own repository account in Fabrica.



6. What repository metadata should I provide?

DataCite members can login with their direct member, consortium organization, or consortium lead accounts to manage all of the repository accounts under them. This lets the member assign prefixes to a repository or reset the repository account’s password. Both the member and the repository can provide additional metadata about the repository, such as service contact information, languages supported, repository platform software, and any certifications the repository might have. 

In particular, you may have noticed in the settings of your Repository accounts in our web interface Fabrica, that we have built an integration with the re3data database. This enables repository related metadata e.g. name, description, repository URL, and certification to be exported into our system automatically. 



7. Does one repository equal one prefix?

No, a repository can have as many prefixes as needed to follow best practices. However, only one repository is allowed to create DOIs with a particular prefix, meaning that a single prefix cannot be shared between multiple repositories.



8. What is re3data?

Launched in 2012, [re3data](https://www.re3data.org) has grown constantly to be the largest registry of research data repositories worldwide with more than 2500 repositories listed in May 2020. re3data contains extensive metadata about repositories that enable researchers to find a trustworthy site where they can deposit their valuable research data. To make re3data intuitive to use the comprehensive re3data metadata schema is translated into a set of icons indicating the most relevant aspects of research data management like access, reuse, costs etc. Having received various research grants, re3data has been and is developed to meet current research data management requirements and standards. re3data is embedded into the landscape of research data infrastructure providing its metadata to several national and international stakeholders.



9. How does DataCite work with re3data?

Since late 2015 re3data has been a service of DataCite that complements its portfolio of research data related infrastructure. Currently, DataCite is working on re3data in the DFG-funded [COREF project](https://doi.org/10.5438/fwkt-3t12), where we are looking into the question of a persistent identifier for repositories.



10. What is repository finder?

Due to disciplinary and institutional requirements, the landscape of data repositories is very heterogeneous, making it difficult for researchers, funding bodies, publishers, and scholarly institutions to select appropriate repositories for storage and search of research data. Here our[ Repository Finder tool](https://repositoryfinder.datacite.org/) helps you find the best fit out of more than 2500 data repositories listed in DataCite‘s re3data international repository registry. The Repository Finder is an output from the [FAIRsFAIR project](https://www.fairsfair.eu/), which aims to supply practical solutions for FAIR research data.
