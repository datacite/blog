---
layout: post
title: Using Schema.org for DOI Registration
author: mfenner
date_created: 2016-12-26
date: 2017-01-03
tags:
- doi
- schema.org
image: https://blog.datacite.org/images/2016/12/schema-org.png
accession_number: MS-12-3591-5910
doi: 10.5438/14TN-546T
---
Two weeks ago we started assigning DOIs to every post on this blog [@https://doi.org/10.5438/4K3M-NYVG]. The process we implemented uses a new [command line utility](https://github.com/datacite/cirneco) and integrates well with our the publishing workflow, with (almost) no extra effort compared to how we published blog posts before.

Given that DataCite is a DOI registration agency, we obviously are careful about following best practices for assigning DOIs. DataCite focusses on DOIs for research data, but many of the general principles can also apply to blog posts. And we have learned a few things already.

### Using schema.org metadata embedded in landing pages

Our initial implementation collected the metadata required for DOI registration in a way that is specific to a particular type of blogging software, so-called [static site generators](https://davidwalsh.name/introduction-static-site-generators). While popular, this leaves out a large number of blogs, for example every blog hosted by Wordpress, by far the most popular blogging platform. We have now relaunched our blog to collect metadata differently, generic enough to work for any blog, but also well aligned with best practices for DOIs.

Our practice is that every DOI should resolve to a landing page, and that landing page should provide both human- and machine-readable metadata. Machine-readable metadata can be embedded into web pages in a number of ways. Traditionally this was done using HTML meta tags, more recent approaches to embedding metadata in HTML include [microdata](https://html.spec.whatwg.org/multipage/microdata.html), [microformats](http://microformats.org/) and [RDFa](https://www.w3.org/TR/2015/NOTE-rdfa-primer-20150317/). An alternative approach is to embed the metadata using JSON and a `<script>` tag. The latter approach is easier to implement, as all metadata are in a single place, and the JSON can be embedded dynamically via a script.

As for the vocabulary, the DataCite Metadata Schema has never been widely used for metadata embedded in web pages. Dublin Core Metadata [@http://dublincore.org/documents/2012/06/14/dces] are often used for metadata in HTML `meta` tags. [Schema.org](https://schema.org/) is an initiative started in 2011 with many of the same goals as Dublin Core, namely to *create, maintain, and promote schemas for structured data on the Internet*.

![](/images/2016/12/schema-org.png)

Schema.org is widely adopted, not the least because the initiative was started by Google, Microsoft, Yahoo, and Yandex to help with indexing web pages for search. Schema.org metadata can be embedded using microdata, RDFa or JSON-LD.

DataCite has recently added support for schema.org in JSON-LD format to [DOI content negotiation](http://citation.crosscite.org/docs.html), for example `curl -LH "Accept: application/ld+json" https://doi.org/10.5438/4K3M-NYVG`. Schema.org in JSON-LD is also embedded in search results on [DataCite Search](https://search.datacite.org) using the tag `<script type="application/ld+json">`.

The DataCite blog now uses schema.org in JSON-LD format to embed metadata in machine-readable format, for example for the blog post mentioned earlier:

```{json}
{
    "@context": "http://schema.org",
    "@type": "BlogPosting",
    "@id": "https://doi.org/10.5438/4K3M-NYVG",
    "name": "Eating your own Dog Food",
    "alternateName": "MS-49-3632-5083",
    "url": "https://blog.datacite.org/eating-your-own-dog-food/",
    "author": [
        {
            "@type": "Person",
            "@id": "http://orcid.org/0000-0003-1419-2405",
            "givenName": "Martin",
            "familyName": "Fenner",
            "name": "Martin Fenner"
        }
    ],
    "publisher": {
        "@type": "Organization",
        "name": "DataCite"
    },
    "dateCreated": "2016-12-20",
    "datePublished": "2016-12-20",
    "dateModified": "2016-12-20",
    "keywords": "datacite, doi, metadata, featured",
    "version": "1.0",
    "description": "Eating your own dog food is a slang term to describe that an organization should itself use the products and services it provides. For DataCite this means that we should use DOIs with appropriate metadata and strategies for long-term preservation for...",
    "license": "https://creativecommons.org/licenses/by/4.0/",
    "image": "https://blog.datacite.org/images/2016/12/230785.jpg",
    "encoding": {
        "@type": "MediaObject",
        "@id": "https://blog.datacite.org/eating-your-own-dog-food/4K3M-NYVG.xml",
        "fileFormat": "application/xml"
    },
    "isPartOf": {
        "@type": "Blog",
        "@id": "https://doi.org/10.5438/0000-00SS",
        "name": "DataCite Blog"
    },
    "citation": [
        {
            "@type": "CreativeWork",
            "@id": "https://doi.org/10.5438/0012"
        },
        {
            "@type": "CreativeWork",
            "@id": "https://doi.org/10.5438/55E5-T5C0"
        }
    ]
}
```

If you are familiar with the DataCite Metadata Schema, it is easy to see how schema.org metadata can be converted into DataCite metadata and used with the DataCite Metadata Store, DataCite’s DOI registration and management service. The properties required by DataCite metadata (DOI, author, title, publisher, publicationYear, resourceTypeGeneral) are standard metadata for blog posts with the exception of the DOI. You can see that the JSON-LD `@id` is the DOI expressed as HTTPS URL (and that the `@id`for authors is their ORCID ID).

Schema.org metadata in JSON-LD format can be added to Wordpress blogs using a [plugin](https://wordpress.org/plugins/wp-structuring-markup/), and more generally can be added to any webpage using tools such as [Google Tag Manager](https://moz.com/blog/using-google-tag-manager-to-dynamically-generate-schema-org-json-ld-tags).

### DOI minting workflow

Publishing a blog post with embedded schema.org metadata, which is then used to mint a DOI and register DOI metadata, changes the DOI minting workflow for this blog. Although the publication workflow of a blog is much simpler than for peer-reviewed content, there are still three distinct phases:

* post is drafted by author
* post is shared for feedback with staff (and possibly others)
* post is published

A DOI for a DataCite blog post is minted in phase 2, i.e. as soon as it is clear that the post will be published. What we are not doing at this phase is making the metadata public – we set the `is_active` flag in the DataCite MDS to false. This prevents indexing in DataCite Search, and the post can only be found if you know the DOI. For sensitive content we could redirect the DOI to a generic landing page, but that would be overkill for the typical blog post. Once the post is published, we set the `is_active` flag to true, enabling indexing, and show the post on the DataCite blog homepage.

With this workflow we have the DOI before publication, which is helpful as a link to collect limited feedback, or for joint blog posts with other organizations, such as our organization identifier blog post in November [@https://doi.org/10.5438/TNHX-54CG].

On the other hand, we should not register the DOI too early, e.g. for draft posts that are never published. What we should also avoid is using something that looks like a DOI, but is not registered with the Handle system. Geoff Bilder has described the problems with such DOI-like strings as internal identifiers in a June 2016 [post](http://blog.crossref.org/2016/06/doi-like-strings-and-fake-dois.html) on the Crossref blog.

The DataCite blog uses "cool" DOIs that are generated from random numbers using the base32 algorithm [@https://doi.org/10.5438/55E5-T5C0]. We have modified this process a little bit: we create an internal identifier (we call them accession number) that contains a random number unique to the DataCite blog for every draft post – this post has accession number `MS-12-3591-5910`. When we mint the DOI this accession number - ignoring letters and hyphens - is turned into a DOI, and the DOI can be predicted because of the base32 algorithm. This workflow avoids using DOI-like strings as internal identifiers, and eliminates the small risk of using the same random number twice when minting a DOI.

### Blog posts in JATS XML

Blog posts are web pages and the landing page for the DOI also contains the fulltext of the post. But there are good reasons to make a blog post also available in downloadable form, most importantly to facilitate reuse, and for archiving. Journal Article Tag Suite ([JATS](https://jats.nlm.nih.gov/)) is an XML standard for tagging journal articles, used by the [PubMed Central](https://www.ncbi.nlm.nih.gov/pmc/) full-text archive of biomedical literature and by an increasing number of scholarly publishers.

JATS is an appropriate format for the blog posts of this blog, and starting this week all of our posts are also available in JATS XML format. You can see the download URL in the schema.org markup (the JATS for this post is [here](https://blog.datacite.org/schema-org-register-dois/schema-org-register-dois.xml)), we will add a more visible link to all posts once some minor tagging issues are resolved. We will also start registering the download URL with the DataCite MDS as `media`, making the JATS XML available to [DOI content negotiation](http://citation.crosscite.org/docs.html), and thus direct download. This should facilitate reuse by others, e.g. aggregation of content from multiple sources and display of content in different formats. This blog uses the [Creative Commons Attribution](https://creativecommons.org/licenses/by/4.0/) license, allowing the copying, redistribution and remixing of the material in any medium or format for any purpose.

### The blog as container

Also this week we assigned a DOI to the DataCite blog itself [@https://doi.org/10.5438/0000-00SS]. The blog is added as a `isPartOf` relation to the schema.org and DataCite metadata of each blog post. This should facilitate discovery of related content via metadata, and allows users to also refer to the blog itself instead of individual posts. The blog is registered as a `resourceTypeGeneral` of Collection.

The alternative would have been to describe the DataCite blog as the `publisher` of our blog posts. We are using **DataCite** as `publisher` instead, as we feel the publisher should be a person or organization.

### References
