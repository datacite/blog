---
layout: post
title: "Are You There, Metadata? It’s Me, the Bibliometrician"
author:
  - kgarza
date: "2021-01-26"
tags:
  - featured
  - metadata
  - oecd
  - dryad
  - bibliometrics
  - fos
doi: 10.5438/j4xv-y945
---

In a recent conversation with Dr. Isabella Peters, she mentioned:

> “From article citation analysis, we know that citation and publication behavior is strongly discipline-dependent. The disciplines dictate where to publish, what to publish, what is okay to be cited, how long it takes to get published (and along with how long it takes to receive citations). Depending on the discipline, you get very different information of what is 'normal' (or what you can expect from the numbers).”
>
> > _-- Dr. Isabella Peters. Professor of Web Science._

Can we make the same statements about data citation and data publication behavior? And If so, what are data citation patterns in each discipline?. These questions are at the center of the ['Meaningful Data Counts'](https://www.scholcommlab.ca/research/data-citation/) project that Dr. Stefanie Haustein and Dr. Isabella Peters lead. The project aims to provide empirical evidence on data usage and data citation behavior and improve the understanding of the role datasets play in scholarly communication. It will conduct empirical research using a mixed-methods approach combining survey research and semi-structured interviews to explain underlying motivations and behaviors with bibliometric analysis to discover data sharing and citation patterns.

For the bibliometrics analysis, the investigators are using the DataCite Metadata Corpus to search for these answers. Unfortunately, they are facing a challenge. Not all DOI metadata includes disciplinary information, and even when it is present, it is not in a standardized fashion that would make it useful for Bibliometricians. According to a recent analysis, only around 6% of DOI metadata includes disciplinary information in a standard manner.

![](/images/uploads/Screenshot-2021-01-13-distribution-fos.png "Only a small percentage of the DOIs have metadata with standardized disciplinary information")

## How can repositories help?

Although DOI metadata does not have a standard vocabulary for the resource discipline, we can all help by using the same vocabulary recommendation. DataCite metadata has a very flexible Subject property, with sub-properties _SubjectScheme_, _SchemeURI_, and _ValueURI_ that can allow the inclusion of any disciplinary vocabulary. There are many discipline classification schemes, but the most widely used generic classification scheme is the [OECD Fields of Science classification](https://www.oecd.org/science/inno/38235147.pdf) with six top-level categories and 42 subcategories. As described in a July blog post [@https://doi.org/10.5438/1dgk-1m22], we are mapping, where possible, the controlled vocabularies for fields of science: [OECD](https://www.oecd.org/science/inno/38235147.pdf) and we are re-indexing all our metadata to align with this standard vocabulary. And we encourage our members and their repositories to use this standard vocabulary when registering content with the DataCite APIs. Here are two examples of how to use it:

```xml
  <subjects>
    <subject schemeURI="http://www.oecd.org/science/inno/38235147.pdf" subjectScheme="Fields of Science and Technology (FOS)">FOS: Economics and business</subject>
  <subjects/>

```

Or

```json
  subjects: [
    {
      "subject": "FOS: Economics and business",
      "schemeUri": "http://www.oecd.org/science/inno/38235147.pdf",
      "subjectScheme": "Fields of Science and Technology (FOS)"
    }
  ]
```

We are also supporting the [Australian and New Zealand Standard Research Classification (ANZSRC) Fields of Research](https://www.abs.gov.au/Ausstats/abs@.nsf/Latestproducts/6BB427AB9696C225CA2574180004463E?opendocument). Therefore if you use ANZSRC Fields of Research in DataCite metadata, we automatically map the metadata to the OECD Fields of Science category or subcategory.

Furthermore, we have implemented the OECD Fields of Science classification in the DOI form in Fabrica, and when you select a field of science using the form, you can be sure your metadata would be in standardized values.

![](/images/uploads/bildschirmfoto-2020-07-09-um-07.51.23.png "DOI form with a selection of subject using the OECD Classification")

If you lead a single discipline repository (e.g., AUSSDA, CCDC, etc.), you can significantly help by adopting the same classification to tag all their resources. In many cases, each category in the OECD Fields of Science classification is general enough to encapsulate all the resources in a single discipline repository. At first, classifying all your DOIs with the same category might not seem useful, but the aggregated effect can greatly help bibliometrics studies.

Both the vocabulary mapping and the DOI Form are available for all resource types (e.g., Text, Software, etc.); hence you can help classify DOIs for many resources, not only datasets.

## Repositories learning from other repositories

A few repositories have already started to use a standardized disciplinary vocabulary. For example, Figshare uses the ANZSRC Fields of Research scheme, and DRYAD uses the OECD Fields of Science classification. Dryad's Product Manager, Daniella Lowenberg, led the latter effort and recounts:

> “While Dryad collected metadata that could help researchers understand what field the study was in (e.g., keywords, related journal, etc) Dryad had not previously collected any formal disciplinary classification. Implementation of OECD Fields of Science was a seamless feature add, and we look forward to classifying the entire Dryad corpus against these 42 Fields of Science. It’s essential that we do this to enhance the metadata that we contribute, to allow for larger bibliometric studies and discovery of our datasets”
>
> > _-- Dr. Daniela Lowenberg. Dryad's Product Manager._

![](/images/uploads/dryad-oecd.png "Dryad Metadata deposit page with discipline selection using the OECD classification.")

Metadata completeness and conformance will continue to be a problem for Bibliometric studies. Nevertheless, DataCite and repositories can help by communicating and coordinating everybody's efforts towards a more conformant and complete metadata corpus that can help the Bibliometrics community advance the understanding of citation and publishing behavior.

## References
