---
layout: post
title: The Location of the Citation, are Data Citation Recommendations Having an Effect?
author: ehull
tags:
 - citation
 - data-level metrics
---

I was pleased to present at [IDCC16](http://www.dcc.ac.uk/events/idcc16) on a research paper called _The location of the citation: Changing practices in how publications cite original data in the Dryad Digital Repository_ (see preprint: Mayo et al, [-@http://doi.org/10.5281/zenodo.32412]).

Recently, organizations including CrossRef and the Digital Curation Center (DCC) have recommended as a best practice that original data citations appear in the works cited sections of the article. We wondered: has data citation practice been changing in light of this guidance, and are there any visible trends over time?

To explore this, we examined 1,125 journal articles published from 2011-2014 with associated data in the [Dryad](http://datadryad.org) data repository. Dryad receives their DOIs from EZID, a DataCite member. We retrieved the article full text via the [EuropePMC Open Access API](http://europepmc.org/ftpsite), searched for the Dryad DOI, and classified the hits as:

* within the body (intratextual - including data availability sections)
* within the works cited
* within both
* within neither (no citation)

Our results?

![Proportion of citation types per year](/assets/images/2016/03/dryad.png)

The highlights:

* Dryad DOI in the works cited, as recommended = **only 6%** of total articles
* Dryad DOI in the body only (including data availability sections) = **75%**
* No citation (Dryad DOI not found anywhere in the article) = **20%**

Was there a temporal trend? Yes.

* Works cited references **increased from 5% to 8%** from 2011-2014
* Articles with no data citation **declined from 31% to 15%**

On the bright side, the total percentage of articles in which the Dryad DOI was present in any section has been rising steadily, from 69% of articles in 2011 to 85% in 2014. This would seem to indicate that authors and journals appreciate the importance of data citations, even if there’s a lack of consensus about where they belong.

The bad news is that at the current rate of growth, the proportion of articles with data citations in the works cited section would not exceed 90% until **2031**. This evidence leads us to conclude that current efforts to promulgate best practice are working, but only very slowly.

Where do we go from here? Author education and increased adoption of standards like the [TOP Guidelines](https://cos.io/top/) will undoubtedly help. Further questions to consider include: is the works cited the right place for original data citations?, should data availability sections be promoted more widely? and should original and data re-use citations be treated differently?

We at DataCite recognize the importance of properly citing data in the scholarly record and the more we understand the challenges the better we can work collectively to overcome the current issues and support the adoption of best practices. Do you have any ideas on how to improve? Share them in the comments!

## References
