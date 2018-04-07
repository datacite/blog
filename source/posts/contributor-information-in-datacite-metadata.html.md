---
layout: post
title: Contributor Information in DataCite Metadata
author: mfenner
date: '2015-10-12'
tags:
- thor
- orcid
doi: 10.5438/d98m-9125
---
The Force11 Joint Declaration of Data Citation Principles [@https://doi.org/10.25490/a97f-egyk] highlight the importance of giving scholarly credit to all contributors:

> Data citations should facilitate giving scholarly credit and normative and legal attribution to all contributors to the data, recognizing that a single style or mechanism of attribution may not be applicable to all data.READMORE

The EC-funded [THOR project](http://project-thor.eu/) that DataCite is involved in addresses these issues, and I have summarized the findings of one of our first reports in a [previous blog post](/differences-between-orcid-and-datacite-metadata/). One of problems identified in the report was the use of a single entry field for personal names, as done by DataCite and many other scholarly services. We need separate fields for family and given names, the most important reason is to allow proper formatting of a data citation (different citation styles have different rules about author name formatting). As a small first step I have implemented proper personal name parsing, using the [Namae](https://github.com/berkmancenter/namae) tool, in [DataCite Labs Search](http://search.test.datacite.org)  and the upcoming [DataCite Labs claim store](http://eventdata.test.datacite.org). One of the next places we can implement this is in the DOI content negotiation service, where we currently provide personal names as literal strings when using an output format that supports family and given names ([http://data.datacite.org/application/citeproc+json/10.6084/M9.FIGSHARE.791569](http://data.datacite.org/application/citeproc+json/10.6084/M9.FIGSHARE.791569)):

```
{
  "type": "dataset",
  "DOI": "10.6084/M9.FIGSHARE.791569",
  "URL": "http://dx.doi.org/10.6084/M9.FIGSHARE.791569",
  "title": "rOpenSci - a collaborative effort to develop R-based tools for facilitating Open Science",
  "publisher": "Figshare",
  "issued": {
    "raw": "2013"
  },
  "author": [{
    "literal": "Scott Chamberlain"
  }, {
    "literal": "Edmund Hart"
  }, {
    "literal": "Karthik Ram"
  }, {
    "literal": "Carl Boettiger"
  }]
}
```

To correctly identify contributors we have to use unique identifiers rather than personal names. The Force11 Joint Declaration of Data Citation Principles [@https://doi.org/10.25490/a97f-egyk] highlight the importance of unique identifiers for data, and I had suggested in an early draft of the principles to also mention the importance of unique identifiers for contributors.

[ORCID](http://orcid.org) identifiers are by far the most widely used identifiers in DataCite metadata – they can be found in the metadata of about [208,000 DOI names](https://search.test.datacite.org/?query=nameIdentifier%3AORCID%5C%3A*) (other identifiers such as ISNI are also supported). In addition there are self-claims of DataCite DOI names in the ORCID registry (e.g. generated via the DataCite Search & Link Service that is part of [Labs Search](https://search.test.datacite.org/)), the exact number of which we currently don't know. DataCite is working with ORCID on a frictionless exchange of these DataCite/ORCID links in both directions.

But how are these DataCite/ORCID links shared with other services? A good starting point is the DataCite Search API. We can include `creator` and `nameIdentifier` in the results, but unfortunately these two fields are not linked together. Until we update the Solr schema for the Search API we therefore have to use the `xml` field that includes all metadata, and parse out the creator names and associated identifiers. We have recently implemented this in Labs Search, turning names with associated ORCID identifiers into clickable links that return a list of all DataCite DOI names associated with that person ([http://search.test.datacite.org/?query=10.6084%2FM9.FIGSHARE.791569](http://search.test.datacite.org/?query=10.6084%2FM9.FIGSHARE.791569)):

![Link name via ORCID ID](/images/2015/10/Bildschirmfoto-2015-10-12-um-08-30-30.png)

Labs Search also provides a **Cite** button that formats the metadata according to common citation styles such as **APA**, or in common exchange formats such as **BibTeX**. These formats unfortunately don't support ORCID identifiers (nothing has changed since I [wrote about this](http://blogs.plos.org/mfenner/2011/11/08/why-bibtex-ris-and-endnote-xml-will-soon-be-broken/) in 2011), so that the DataCite/ORCID links would be lost using these formats.

Citeproc JSON is a modern alternative to BibTeX, RIS and similar exchange formats, and is used as the machine-readable representation to format references in the reference managers Zotero, Mendeley, Papers (and others) using [Citation Style Language](http://citationstyles.org/). Although Citeproc JSON doesn't support ORCID identifiers, it is much easier to extend than for example BibTeX, where adding ORCID identifiers without breaking the format is difficult to impossible. Last week I implemented this modified Citeproc JSON in a new DataCite service I am working on (e.g. using the example from above:

```
"author": [{
      "family": "Chamberlain",
      "given": "Scott",
      "ORCID": "http://orcid.org/0000-0003-1444-9135"
    }, {
      "family": "Hart",
      "given": "Edmund"
    }, {
      "family": "Ram",
      "given": "Karthik",
      "ORCID": "http://orcid.org/0000-0002-0233-1757"
    }, {
      "family": "Boettiger",
      "given": "Carl",
      "ORCID": "http://orcid.org/0000-0002-1642-628X"
    }]
```

DataCite is not the first DOI registration agency to implement this, CrossRef is doing the same for some time in their REST API, e.g. for [http://api.crossref.org/works/10.1111/1365-2745.12293](http://api.crossref.org/works/10.1111/1365-2745.12293):

```
"author": [{
  "affiliation": [{
    "name": "Department of Biological Sciences; Simon Fraser University; Burnaby BC Canada"
  }],
  "family": "Chamberlain",
  "given": "Scott",
  "ORCID": "http://orcid.org/0000-0003-1444-9135"
}, {
  "affiliation": [{
    "name": "CONICET; Instituto Argentino de Investigaciones de las Zonas Aridas; Mendoza Argentina"
  }, {
    "name": "Instituto de Ciencias Básicas; Universidad Nacional de Cuyo; Mendoza Argentina"
  }],
  "family": "Vázquez",
  "given": "Diego P."
}, {
  "affiliation": [{
    "name": "School of Biology; University of Leeds; Leeds UK"
  }, {
    "name": "Naturalis Biodiversity Center; PoBox 9517 Leiden 2300RA The Netherlands"
  }],
  "family": "Carvalheiro",
  "given": "Luisa"
}, {
  "affiliation": [{
    "name": "Department of Biological Sciences; Simon Fraser University; Burnaby BC Canada"
  }],
  "family": "Elle",
  "given": "Elizabeth"
}, {
  "affiliation": [{
    "name": "Biology Department; University of Calgary; Calgary AB Canada"
  }],
  "family": "Vamosi",
  "given": "Jana C."
}]
```

You see one difference: CrossRef also provides the affiliation, as a list of text fields. DataCite metadata also contain an `affiliation` field. This is a text string, ideally DataCite should also support unique identifiers for the affiliation, as we already do for `HostingInstitution` which can have a `nameIdentifier` and `nameIdentifierScheme`.

Funding information is similar to affiliation in that it is something not related to the dataset itself, but to one or more contributors. We could therefore encode funding information similar to affiliation, as a `funding` field for each author. The big advantage would be that DataCite and ORCID would have consisting funding information, rather than DataCite listing funding for works, and ORCID listing funding for people, and no direct connection between the two.

Lastly, we can use Citeproc JSON to describe the contributor role of the author. DataCite distinguishes between `creator` – *the main researchers involved in producing the data, or the authors of the publication, in priority order* – and `contributor` for other contributions, with a controlled vocabulary for `contributorType`. The THOR report mentioned above [@https://doi.org/10.5281/ZENODO.30799] goes into detail in the different contributor role vocabularies used by DataCite and ORCID (there is little overlap), and also describes [Project CRediT](http://casrai.org/CRediT), a community initiative to harmonize contributor roles across stakeholders, standardizing on 14 common roles. CRediT is closely link to [contributorship badges](https://www.mozillascience.org/contributorship-badges-a-new-project), a project started by the Mozilla Science Lab, with an example journal article using the CRediT roles and badges [here](http://gigasciencejournal.com/blog/putting-credit-hands-researchers/):

![Contributor badges](/images/2015/10/Bildschirmfoto-2015-10-12-um-09-39-34.png)

Taking all the above together, the JSON to describe all this information could look similar to the following (some of the data are made up):

```
"author": [{
      "affiliation": [{
        "name": "Department of Biological Sciences; Simon Fraser University; Burnaby BC Canada",
        "ISNI": "0000-0004-1936-7494"
      }],
      "funding": [{
        "funder-name": "Alfred P. Sloan Foundation",
        "funder-identifier": "https://doi.org/10.13039/100000879",
        "award-number": "555-1212",
        "award-uri": "http://www.sloan.org/awards/555-1212"
      }],
      "family": "Chamberlain",
      "given": "Scott",
      "ORCID": "http://orcid.org/0000-0003-1444-9135",
      "CRediT": ["conceptualization", "writing_initial", "writing_review"]
    }, {
      "family": "Hart",
      "given": "Edmund"
    }, {
      "family": "Ram",
      "given": "Karthik",
      "ORCID": "http://orcid.org/0000-0002-0233-1757"
    }, {
      "family": "Boettiger",
      "given": "Carl",
      "ORCID": "http://orcid.org/0000-0002-1642-628X"
    }]
```

The above obviously contains a lot more information than the original Citeproc JSON. And event though `affiliation`, `funding` and `CRediT` are optional fields, this goes beyond the scope of Citeproc JSON, which is used to format references, rather than as a generic bibliographic exchange format. We should therefore call this JSON differently, and I propose **Crosscite JSON**, a common JSON format to describe scholarly works used by the DOI registration agencies CrossRef and DataCite. One particular challenge will be to strike the right balance between important information that we want to share easily, vs. keeping the JSON simple and not move away too much from Citeproc JSON, which after all is already implemented in a lot of tools and workflows. While the above JSON example looks a bit scary at first, it provides the level of detail asked for by institutions and funders, and - in contrast to the Data Citation Principles - *uses a single mechanism of attribution applicable to all scholarly works, including data*.

## References
