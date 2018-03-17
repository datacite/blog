---
layout: post
title: COUNTER Code of Practice for Data Usage Draft Update
author: dlowenberg
date: '2017-08-23'
tags:
- data citation
- counter
doi: 10.5438/p678-z011
---

*Cross-posted from the [Make Data Count blog](https://makedatacount.org/2017/08/18/counter-code-of-practice-for-data-usage-draft-update/).*

As a research and scholarly communications community, we value methods to gauge the impact of research outputs, and we do this in the forms of citations and downloads. But, until now this has been limited to traditional journal publications, and scholarly research is much more than an article. Foremost, data play a major role in the research process and deserve to be valued as a first-class scholarly output. But to do so, an infrastructure for measure the impact of research data needs to be developed that responds to the community’s needs. The first step is developing a measurement standard for data usage.

Counting data is much harder than journal counting pdf articles. Data are complex objects with a variety of file formats, numerous versions, and one dataset can be part of or derived from another dataset. Earlier this year, COUNTER (represented by Paul Needham) and Make Data Count  team members  (Martin Fenner (DataCite), Matt Jones (DataONE), John Chodacki and Daniella Lowenberg (CDL)) met for two days to talk through the use cases, definitions, and hurdles in properly counting data usage and to put together the first iteration of the *COUNTER Code of Practice for Data Usage*.

Both days were filled with discussions about what stakeholders would value in data usage. For instance, funders may want to know statistics about all data from a specific program, or an institution may want to know statistics about all of their researchers’ data aggregated. Discussions continued about how data can be dynamic, have partial downloads, and data can vary in volume. Concerns about geolocation and IP addresses across different country standards were also discussed.

We talked through puzzling definitions, reminiscent of word problems: *“If someone accesses and downloads package A, they get a copy of granule, but if that granule is in another download, package B, they get a copy of it. If granule was downloaded without either package, does it count for package A or B for the total count? Both? Neither?”*.

Hint: The answer is both.

As the first draft of COUNTER for Data Usage takes shape, we want to share a summary of our recommendation. Make Data Count would appreciate your community input and feedback as soon as we release the first version at the beginning of September. Stay tuned for the first release, and follow us on our website for where we will be doing virtual and in-person sessions. Additionally, if you are working in the data metrics or data usage space, [please get in touch with us!](https://docs.google.com/forms/d/e/1FAIpQLSfggeFUeAPcdcpTm50x7M235uCNocNUaAt5IYBbLSVCZEoGnA/viewform?c=0&w=1)

### COUNTER Code of Practice for Data Usage Executive Summary:

The *Code of Practice for Data Usage* enables data publishers and vendors to produce consistent and credible usage data for research data. This allows libraries, funders and other stakeholders to compare data received from different vendors and data publishers, and to understand and demonstrate the value of research data.

This is the first draft release of a *Code of Practice for Data Usage* specifically targeting research data usage. The recommendations are aligned as much as possible with the [COUNTER Code of Practice Release 5](https://www.projectcounter.org/code-of-practice-five-sections/abstract/) for the major categories of e-resources (journals, databases, books, reference works, and multimedia databases). Many definitions, processing rules and reporting recommendations apply to research data in the same way as they apply to  other resources. For example, this applies to data granularity, i.e. how to report usage for datasets that are available as single files, datasets consisting of multiple files, and/or collections of datasets.

While there is much more heterogeneity in this granularity for research data compared to other e-resources, the basic approach to data processing and reporting is fundamentally the same. The *Dataset* (a collection of data, published or curated by a single agent), is the content item for which we report usage and this can be in the form of *investigations* (e.g. how many times metadata are accessed) and *requests* (how many times data are retrieved). Investigations and requests for components of the dataset can be reported in the same way as other e-resources under COUNTER Code of Practice Release 5, in that the total number of *requests* are summed across the components of a given dataset. Sessions allow the differentiation between *total* investigations and requests of a dataset (in which all accesses are summed) and *unique* investigations and requests (in which accesses are only counted once if they are within a unique user session), similar to the reporting for other content items.

Some aspects of the processing and reporting of usage data are unique to research data, and the *Code of Practice for Data Usage* thus needs to deviate from the COUNTER Code of Practice Release 5 and specifically address them. This starts with the main use cases for data usage reporting; subscription access to research data is uncommon, and thus breaking down the usage data by institution accessing the research data less relevant. There is interest in understanding the geographic distribution of investigations and requests to research data, but these usage data can have a lower granularity (by country rather than by institution), and can be aggregated and openly shared.

COUNTER Code of Practice Release 5 limits the usage data to human users and filters out all known robots, crawlers and spiders. While the same exclusion list can be applied to research data, there is legitimate non-human usage by scripts and other tools used by researchers, and these usage data should be included in the reporting.

Versioning is much more common and complex with research data compared to other e-resources, and the *Code of Practice for Data Usage* addresses this. We recommend to report both the usage data for each specific version, and the combined usage for all versions. The *Code of Practice for Data Usage Release 1* will not fully address the particular challenges associated with reporting usage for dynamically generated datasets.

Research data can be retrieved in a wide variety of file formats, different from text-based e-resources. For the *Code of Practice for Data Usage Release 1* we will not  break down requests by file format. We do include the volume of data transferred as part of the reporting, as again the variations are much greater than for other e-resources. Reporting request data transfer volume in addition to the number of requests and investigations also helps with understanding differences between data repositories in how data are packaged and made available for retrieval.

The *Code of Practice for Data Usage* will enable the reporting of usage stats by different data repositories following common best practices, and thus is an essential step towards realizing usage stats as a metric available to the community to better understand how publicly available datasets are being reused. This complements ongoing work on establishing best practices and services for data citation.
