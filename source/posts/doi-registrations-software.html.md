---
layout: post
title: DOI Registrations for Software
date: '2018-05-17'
author: 
- mfenner
- danielskatz
- lnielsen
- arfon
tags:
- doi
- software
- featured
image: https://blog.datacite.org/images/2018/05/dois-for-software.png
---

We know that software is important in research, and some of us in the scholarly communications community, for example, [in FORCE11](https://www.force11.org/group/software-citation-implementation-working-group), have been pushing the concept of software citation as a method to allow software developers and maintainers to get academic credit for their work: software releases are published and assigned DOIs, and software users then cite these releases when they publish research that uses the software.

DataCite recently examined the DOIs that have been created for software, and found that the number of new DOIs created for software is growing roughly exponentially, now reaching about 2000 software DOIs per month, with spikes of around 4000 per month in some of 2017. The data and results are shown here. The source code for the R script used to generate the data and figures is available (@https://doi.org/10.5438/wr0x-e194).

As of May 16, 2018, [58,301 DOIs](https://search.datacite.org/works?resource-type-id=software) have been registered for software. We can break down this number by repository where the software source code is hosted – most DOIs for software have been registered at Zenodo. 

|                                                                                           |      |
|:------------------------------------------------------------------------------------------|-----:|
|CERN.ZENODO - ZENODO - Research. Shared.                                                   |41346 |
|FIGSHARE.ARS - figshare Academic Research System                                           |4226  |
|PURDUE.NCIB - National Cancer Institute, Bioconductor                                      |2769  |
|PURDUE.EZID - Purdue University                                                            |2463  |
|OSTI.DOE - DOE Generic                                                                     |736   |
|INIST.INRA - Institut National de Recherche Agronomique                                    |223   |
|OCEAN.OCEAN - Code Ocean                                                                   |206   |
|CRUI.INFNCNAF - Istituto Nazionale di Fisica Nucleare. Centro Nazionale Analisi Fotogrammi |190   |
|CDL.UCI - UC Irvine Library                                                                |120   |
|ETHZ.DA-RD - ETHZ Data Archive - Research Data                                             |88    |

### Changes over Time

How did these numbers change over time, since the
he [first DataCite DOI for software](https://api.datacite.org/works?resource-type-id=software&sort=registered&order=asc&page[size]=1) was registered September 7th, 2011 by the Leibniz Institute of Plant Genetics and Crop Plant Research (IPK) in Germany (@https://doi.org/10.5447/ipk/2011/0)?

We can start by looking at the [Zenodo/GitHub integration](https://guides.github.com/activities/citable-code/), where users can archive a GitHub repository in the Zenodo data repository. The integration was launched in 
February 2014 and we can see a nice correlation with this data, and with a [May 2014 blog post](https://github.com/blog/1840-improving-github-for-science) by Arfon Smith on the GitHub blog, describing (and advertising) the integration work.

![Software DOIs registered at DataCite](/images/2018/05/dois-for-software.png)

In September 2016, the FORCE11 Software Citation Principles (@https://doi.org/10.7717/peerj-cs.86) were published, and in October 2016 the [GitHub Guide to Making your Code Citable](https://guides.github.com/activities/citable-code/) was updated. There appears to be a change of in the rate of growth around this time as well.


## Looking forward

We see a nice exponential growth in the number of DOIs for software, and we don't expect this to change in 2018 and beyond. The [Force11 Software Citation Implementation Working Group](https://www.force11.org/group/software-citation-implementation-working-group) is working on implementation and adoption of the Software Citation Principles, and for a number of use cases, e.g., citation in a journal article, DOIs play an important role. We expect initiatives such as [Citation File Format](http://citation-file-format.github.io/citation-file-format/) and [Software Heritage](https://www.softwareheritage.org/) to have a positive impact on the number of DOIs for software. A paper on persistent identification and citation of software using DOIs by Jones et al (-@https://doi.org/10.2218/ijdc.v11i2.422) was published in July 2017, based on earlier work from 2015 (@http://purl.org/net/epubs/work/24058274), and the DataCite Metadata 4.1 schema focussing on software citation was released in September 2017 (@https://doi.org/10.5438/0014, @https://doi.org/10.5438/nzhx-xx96). 

CodeMeta (@https://doi.org/10.6084/m9.figshare.4490588, @https://doi.org/10.5063/schema/codemeta-2.0) is particularly relevant; this new standard for software metadata is increasingly integrated into DOI registration workflows, including the CaltechDATA repository since [March 2018](https://www.library.caltech.edu/news/enhanced-software-preservation-now-available-caltechdata), and the DataCite DOI registration service since May 2018 (@https://doi.org/10.5438/cxe5-rg55, @https://doi.org/10.5438/0yk5-b755). CodeMeta libraries are currently available for R (Codemetar, @https://doi.org/10.5281/zenodo.1241346), Ruby (Bolognese, @https://doi.org/10.5438/n138-z3mk) and Python ([CodeMetaPy](https://github.com/proycon/codemetapy)).

## References
