---
layout: post
title: Using Schema.org Metadata to register DOIs
author: mfenner
date: 2016-12-26
tags:
- doi
- schema.org
image: https://blog.datacite.org/images/2016/12/schema-org.png
doi: 10.5438/14TN-546T
published: false
accession_number: MS-12-3591-5910
---
Last week we started assigning DOIs to every post on this blog [@https://doi.org/10.5438/4K3M-NYVG]. The process we implemented uses a new command line utility and integrates well with the publishing workflow we use.

Unfortunately the same workflow can only be applied to a small number of science blogs.READMORE Most science blogs

* are written by a single person (often a scientist) with no easy access to register DOIs
* use common blogging platforms such as Wordpress or Blogger rather than a static site generator
* have mixed topics, and not all posts necessarily need a DOI
* are not maintained forever

How can we enable DOI registration for these blogs? By rethinking how DOIs are registered. The basic workflow would be as follows:

* science blog exposes all metadata needed for DOI registration in blog post
* science blog pings data center with blog post URL
* data center archives content and pings DataCite with blog post URL
* DataCite grabs metadata from blog post, registers DOI and informs data center (and in turn science blog)

What follows is a description of that workflow. The necessary steps have not (yet) been implemented in production systems, and we want to collect feedback and potentially identify pilots.

### Science blog exposes metadata

Machine-readable metadata can be embedded into web pages in a number of ways. Traditionally this was done using HTML `meta` tags, more recent approaches to embed metadata in HTML include [microdata](https://html.spec.whatwg.org/multipage/microdata.html), [microformats](http://microformats.org/) and [RDFa](https://www.w3.org/TR/2015/NOTE-rdfa-primer-20150317/). An alternative approach is to embed the metadata using JSON and a `<script>` tag. The latter approach is easier to implement, as all metadata are in a single place, and the JSON can be embedded dynamically by a script.

As for the vocabulary, the DataCite Metadata Schema has never been widely used for metadata embedded in web pages. Dublin Core Metadata [@http://dublincore.org/documents/2012/06/14/dces] are often used for metadata in HTML `meta` tags. [Schema.org](https://schema.org/) is an initiative started in 2011 with many of the same goals as Dublin Core, namely to *create, maintain, and promote schemas for structured data on the Internet*.

![](/images/2016/12/schema-org.png)

Schema.org is widely adopted, not least because the initiative was started by Google, Microsoft, Yahoo and Yandex to help with indexing web pages for search. Schema.org metadata can be embedded using microdata, RDFa or JSON-LD. DataCite has recently added support for schema.org in JSON-LD format to content negotiation, for example

```
curl -LH "Accept: application/ld+json" https://doi.org/10.5438/4K3M-NYVG
```

Schema.org in JSON-LD is also embedded in search results on [DataCite Search](https://search.datacite.org) using the tag `<script type="application/ld+json">`, and the DataCite blog now also embeds schema.org in JSON-LD format, e.g. for the blog post mentioned earlier:

```{json}
{
    "@context": "http://schema.org",
    "@type": "BlogPosting",
    "@id": "https://doi.org/10.5438/4K3M-NYVG",
    "name": "Eating your own Dog Food",
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
        "@id": "https://raw.githubusercontent.com/datacite/blog/master/source/posts/eating-your-own-dog-food.html.md",
        "fileFormat": "text/markdown"
    },
    "isPartOf": {
        "@type": "Blog",
        "@id": "https://blog.datacite.org",
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

If you are familiar with the DataCite Metadata Schema it is easy to see how this information can be converted into a format the DataCite Metadata Store understands. The properties required by DataCite (DOI, author, title, publisher, publicationYear, resourceTypeGeneral) are standard metadata for blog posts with the exception of the DOI. You can see that the JSON-LD `@id` is the DOI expressed as HTTPS URL (and that the `@id`for authors is their ORCID ID).

Schema.org metadata in JSON-LD format can be added to Wordpress blogs using a [plugin](https://wordpress.org/plugins/wp-structuring-markup/), and more generally can be added to any webpage using tools such as [Google Tag Manager](https://moz.com/blog/using-google-tag-manager-to-dynamically-generate-schema-org-json-ld-tags). The wide tool support for schema.org, and the added benefit of improved indexing by search engines, outweights the extra effort of using a different metadata schema that has to be converted into DataCite format.

### Science blog pings data center with blog post URL

With the metadata in place, the next step is to ping a data center that the blog works with. This can happen automatically for all new blog posts, or manually for specific blog posts.

### Data center archives content and pings DataCite with blog post URL

The data center then archives the blog content, either by archiving the web page, or using a more specific format if provided by the blog in the schema.org `encoding` property (see example above).

The data center acts as intermediary between the science blog and DataCite. It is responsible for archiving the blog content and for monitoring that the blog post can still be reached. If the blog disappears permanently for whatever reason, the data center can generate a new landing page for the DOI based on the registered metadata, linked to the archived content. After archiving the blog content, the data center pings DataCite with the blog post URL.

### DataCite grabs metadata from blog post, registers DOI and informs data center (and in turn science blog)

DataCite will then grab the schema.org metadata using that URL, will convert them into the DataCite metadata schema format and will register that DOI. The `url` property will be used as redirect URL. If an `encoding` property is found, DataCite will register this as media, available in DOI content negotiation. Updates of the redirect URL, metadata or media can happen in similar fashion. The data center is informed of the successful DOI registration, which in turn informs the science blog.

### Why is this important?

The above workflow should facilitate DOI registration for science blog posts compared to what is possible now. There is obviously work needed by all involved parties to enable this workflow, so why the effort? Are science blog posts so common and/or special?

The reason is that science blogs are just one example for a pattern that we see frequently, and have discussed in various contexts in 2016: the separation of content creation from DOI registration.

* **Dynamic data citation**. The RDA Data Citation working recommends [@https://doi.org/10.15497/RDA00016] that a PID should be assigned when a unique query is used in a data citation. The above workflow reduces the effort for the data center in generating metadata for that PID by shifting some of the work to DataCite.

* **Fragment identifiers**. There are many use cases for citing a specific fragment of a larger document, e.g. a segment in a video, or a paragraph in a text document. Rather than creating endless numbers of DOIs that will never be used, or using [template handles](https://www.doi.org/doi_handbook/5_Applications.html#5.8) which don't work well with DOIs (more on that another time), we can create a DOI whenever someone wants to cite the fragment.

* **Large numbers of machine-generated data**. Machines, e.g. sensors for climate data or DNA sequencers for genome data, can generate millions of datasets which all could be potentially cited, but only a subset of them ever will. Assigning a DOI when these data will be cited is more practical than assigning millions of DOIs, or using a different persistent identifier that does not work so well in data citation workflows, e.g. because of missing citation metadata.

* **Software citation**. Scientific software is usually in a private or public code repository such as Github, a DOI is assigned to specific releases. The Force11 Software Citation Principles published in September [@https://doi.org/10.7717/peerj-cs.86] recommend that *necessary metadata should then be included in a CITATION file or machine-readable CITATION.jsonld file [@https://doi.org/10.5334/jors.by]*.

### Next steps

The generation of DOIs for the DataCite blog is a nice use case for the above workflow, since the authors of the blog and the data center are both DataCite, and because schema.org metadata are a natural fit for a blog. We would be interested in working with science blogs that are managed by an organization that is also a DataCite data center, and is for example using Wordpress for their blog.

One of the issues we need to solve is the timing of minting the DOI and associated metadata. We want to avoid DOI-like strings that are not registered as DOIs, but we also want to avoid a delay in obtaining a DOI once a blog post has been published. For the DataCite blog it makes sense to mint a DOI when we put a draft blog post on our staging server – meaning the post will be published eventually – and update the metadata (e.g. the blog post url) when the post goes to our production server.

### References
