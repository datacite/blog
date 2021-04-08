---
layout: post
title: "Brave New PID: DMP-IDs "
author: 
- kgarza
- mbuys
date: '2021-04-07'
tags:
- dmp
- uc3
- datacite
- rda
- featured
image: /images/uploads/dmp-year.png
doi: 10.5438/j22a-5d79
---


Despite the challenges over the last year, we are pleased to share some exciting news about launching the brave new PID, DMP IDs. Two years ago we set out a plan in collaboration with the [University of California Curation Center](https://uc3.cdlib.org/) and the [DMPTool ](https://dmptool.org/)to bring DMP IDs to life. The work was part of the NSF Eager grant [DMP Roadmap: Making Data Management Plans Actionable](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1745675&HistoricalAwards=false) and allowed us to explore the potential of machine-actionable DMPs as a means to transform the DMP into a critical component of networked research data management. 

The plan was to develop a persistent identifier (PID) for Data Management Plans (DMPs). We already have PIDs for many entities, such as  articles, datasets etc. (DOIs), people (such as ORCID iDs) and places (such as ROR IDs). We knew that it would be important for DataCite to support the community in establishing a unique persistent identifier for DMPs. Until now, we had no PID for the document that **"describes data that will be acquired or produced during research; how the data will be managed, described, and stored, what standards you will use, and how data will be handled and protected during and after the completion of the project"**. There was no such thing as a DMP-ID; and today that changes.

Over the last few years, there has been lots of community effort towards establishing a standard data model under the [Research Data Alliance (RDA) DMP Common Standards Working Group](https://github.com/RDA-DMP-Common/RDA-DMP-Common-Standard) and we are now able to bring this all together in the form of a new identifier. 



![](/images/uploads/dmp-schema.png "DMP schema example")
<center><sub><sup>DMP schema example</sup></sub></center>


DMP IDs at a fundamental level are registered as a DOI with the resourceTypeGeneral "OutputsManagementPlan." Since the DataCite release of schema 4.4, the resourceTypeGeneral controlled vocabulary now includes this as a controlled list item. DMP IDs are created in the same way as registering any DOI, with the same required fields, but must include the "OutputsManagementPlan" resourceTypeGeneral to be identifiable. 

**Generating DMP IDs creates an unbreakable link between a data plan to the project outputs and allows access to DataCite’s supporting services such as Event Data to facilitate connections via the PID Graph.**

Assigning DOIs to persistently identify DMPs is a trend that we have seen already. Since 2019,  more than 200 DMPs have been assigned a DOI for their identification. Repositories such as Zenodo made this possible by allowing users to select Data Management Plans as one of the many types of resources. 

We know through our work with the DMP community that the introduction of the formal DMP ID, will allow for DMP IDs to proliferate and serve downstream use cases.

Besides persistently identifying DMPs, the assignment of DMP IDs realizes the promises of machine-actionable DMPs. The DataCite GraphQL API can now expose Data Management Plans and all their connections. Other applications can use the same APIs to build machine-actionable DMPs-based applications such as [visualizations](https://nbviewer.jupyter.org/github/datacite/pidgraph-notebooks-python/blob/master/dmp/user-story-single-dmp-connections.ipynb) or [summary statistics]([https://nbviewer.jupyter.org/github/datacite/pidgraph-notebooks-python/blob/master/dmp/user-story-all-dmps.ipynb](https://nbviewer.jupyter.org/github/datacite/pidgraph-notebooks-python/blob/master/dmp/user-story-all-dmps.ipynb)).



![](/images/uploads/dmp-year.png "Distribution of DOIs assigned to DMPs by year(creation of the DOI)")
<center><sub><sup>Distribution of DOIs assigned to DMPs by year(creation of the DOI).</sup></sub></center>

From today, it is possible for DataCite members to use the MDS API and Fabrica to assign DMP IDs to your Data Management Plans. Our team has created [documentation](https://support.datacite.org/docs/introduction-to-machine-actionable-dmps-madmps) to support the community in registering DMP IDs, understanding best practices and exploring related connections in the PID Graph.

We are really pleased to have reached this milestone and look forward to tracking the downstream impact.
