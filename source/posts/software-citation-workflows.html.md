---
layout: post
title: Software Citation Workflows
author: mfenner
date: 2015-10-19
tags:
- software citation
- github
doi: 10.5438/1H7N-3CEN
published: true
---
*This blog post provides more detail for a short presentation I will give today at the [Software Credit Workshop](http://www.software.ac.uk/software-credit) in London. The aim is to look at the infrastructure pieces needed for software discovery and credit, and at the workflows linking these different parts of the infrastructure.*

### Code Repository

Code repositories are the places where the actual work on software takes place, and for scientific software this often means that it happens in public with the use of an open license. Code repositories are increasingly integrated with additional services from issue trackers to continuous integration testing.

![](/images/2015/10/code_repositories.png)

One big problem with code repositories is that they are not intended as long-term archives for code. Github and Bitbucket didn't even exist 8 years ago, and Google Code will be [shut down in January 2016](http://google-opensource.blogspot.de/2015/03/farewell-to-google-code.html).

### Data Repository

Long-term archiving of software is best done in dedicated data repositories, the two most popular in terms of DataCite DOIs are [Zenodo](https://zenodo.org/) (close to [5000](http://search.labs.datacite.org/?q=%2A&resourceType_facet=Software&datacentre_facet=CERN.ZENODO+-+ZENODO+-+Research.+Shared.) DOIs for software) and [NanoHub](https://nanohub.org/) (about [2,000](http://search.labs.datacite.org/?q=%2A&resourceType_facet=Software&datacentre_facet=PURDUE.EZID+-+Purdue+University) DOIs for software). NanoHub uses the open source [HubZero](https://hubzero.org/) software that integrates a subversion code repository, whereas Zenodo has built an integration with Github, described in this [guide](https://guides.github.com/activities/citable-code/).

![](/images/2015/10/Bildschirmfoto-2015-10-18-um-14-01-39.png)

Providing a long-term archive for code is needed to properly cite software, similarly to what we expect for research data and scholarly articles. We of course don't have to use DOIs for this, but DOIs make citation easier by requiring basic citation metadata, are supported by reference managers, and we can provide formatted citations via [DOI content negotiation](http://www.crosscite.org/cn/), e.g. in [DataCite Labs Search](http://search.labs.datacite.org/?q=10.5281/ZENODO.32193):

![](/images/2015/10/Bildschirmfoto-2015-10-18-um-13-59-34.png)

The Github/Zenodo integration assigns a DOI to a particular [Github release](https://github.com/blog/1547-release-your-software) of a software repo. This is perfect for a citation, which should be specific for the software version used in a particular research project. In addition, users of software and software authors want to know who is citing or otherwise re-using all versions of the software. In order for this to work we need to think beyond a specific release and link that release to other releases and to the Github repository itself. The repository has no DOI attached to it in the current workflow, so this has to be done in a service separate from the DataCite Metadata Store.

### Claim Store

We can expand the DataCite Data-Level Metrics service or Claim Store [described in an earlier post](/announcing-data-level-metrics-in-datacite-labs/) to properly handle Github repositories, and the first implementation is [available now](http://cls.labs.datacite.org) in DataCite Labs. Continuing with the earlier example of the Python **librosa** library, the DataCite Claim store tracks links between release, repository and repository owner ([link](http://cls.labs.datacite.org/works/https://github.com/bmcfee/librosa)):

![](/images/2015/10/Bildschirmfoto-2015-10-18-um-17-07-48.png)

These links are made available in DataCite Labs Search ([link](http://search.labs.datacite.org/?q=librosa+python)), so that users can go directly to either the specific release or the code repository landing page instead of the archived version on Zenodo:

![](/images/2015/10/Bildschirmfoto-2015-10-18-um-17-40-51.png)

We can use the claim store to not only store those links, but also to track metrics around the software package over time, e.g. the number of Github stars and forks (349 and 68 for a combined 417 in this case):

![](/images/2015/10/Bildschirmfoto-2015-10-18-um-17-11-46.png)

We will be building out this service in the coming months with the goal of tracking all software packages with DOIs linked to a Github release. Future iterations may also show the number of Github stars and forks directly in the search results. And because the Claim Store provides an open API, this information can also be integrated in other places, most obviously Zenodo.

### Language and Domain Repository

Language-specific repositories hold all software packages from a particular language, e.g. [pypi](https://pypi.python.org/pypi) for Python or [CRAN](https://cran.r-project.org/) for R, with a search interface for discovery and a specific format that allows for automatic installation. Although not all scientific software is submitted to these repositories, they are usually the place that software developers go to first for discovery and installation, using a package manager working with these repositories.

Domain-specific repositories such as the Astrophysics Source Code Library ([ASCL](http://ascl.net/)) or [Bioconductor](https://www.bioconductor.org/) serve important roles for discovery and community building. Both their strength and limitation is their domain-specific nature. They complement the source code repositories mentioned above. One important function of domain-specific repositories is to act as a filter for scientific software. Other approaches to identify software as scientific include:

* software that has a DOI (Zenodo, above)
* software using specific tags (Depsy, see below)
* software cited in the scholarly literature ([ScienceToolbox](http://sciencetoolbox.org/))

### Metrics Data Provider

Language-specific repositories provide the detailed information that is needed to more extensively track reuse of a software package. [Depsy](http://depsy.org/) is a new software metrics data provider by the Impactstory Team that will launch later this month, and will provide detailed information about reuse, including citations in the scholarly literature. Again using **librosa** as an example, Depsy provides the following information:

![](/images/2015/10/Bildschirmfoto-2015-10-18-um-12-14-48.png)

Of particular interest is how Depsy tracks reuse, as the service follows all the dependencies and dependencies of dependencies of a software package, described as transitive credit by Dan Katz [-@https://doi.org/10.5334/jors.be]. Depsy is currently tracking software packages in **pypi** and **CRAN**, and an open API is available. Once Depsy has launched, it would of course be of great interest to integrate data from the service into the DataCite Claim Store, and Depsy is providing an open API for this.

## References
