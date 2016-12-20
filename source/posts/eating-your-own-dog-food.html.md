---
layout: post
title: Eating your own Dog Food
author: mfenner
date: 2016-12-20
tags:
- datacite
- doi
- metadata
- featured
image: https://blog.datacite.org/images/2016/12/230785.jpg
doi: 10.5438/4K3M-NYVG
published: true
---
[Eating your own dog food](https://newrepublic.com/article/115349/dogfooding-tech-slang-working-out-glitches) is a slang term to describe that an organization should itself use the products and services it provides. For DataCite this means that we should use DOIs with appropriate metadata and strategies for long-term preservation for the scholarly outputs we produce. For the most part this is not research data, but rather technical documents such as the DataCite Schema and its documentation [-@https://doi.org/10.5438/0012].

These outputs also include the posts on this blog, where we discuss topics relevant for the DataCite community, but also of broader interest to anyone who cares about research data, persistent identifiers, and scholarly infrastructure. And starting today all blog posts on this blog will have a DOI, metadata and use a persistent storage mechanism.READMORE

![Photo by [Bill Emrich](https://www.pexels.com/photo/black-and-tan-yorkshire-terrier-puppy-230785/). [CC Zero](https://creativecommons.org/publicdomain/zero/1.0/).](/images/2016/12/230785.jpg)

### Technical Implementation

This blog is powered by the static site generator [Middleman](https://middlemanapp.com/), with blog posts written in [Markdown](http://commonmark.org/) and converted to HTML using [Pandoc](http://pandoc.org/) and the [Travis CI](https://travis-ci.org) continuous integration service. Static site generator means that there is no database or application server powering the site, making website adminstration simpler, cheaper and safer. In addition to the blog, the [DataCite homepage](https://www.datacite.org) and [Metadata Schema subsite](https://schema.datacite.org) are also generated using Middleman.

The simplicity is particularly important here, as registering the DOIs and metadata can be accomplished using a command line utility written by DataCite staff that doesn't need to know much about the internals of Middleman, and thus can be easily adapted to other static site generators such as [Jekyll](http://jekyllrb.com/), [Hugo](http://gohugo.io/) or [Hexo](https://hexo.io/). The command line utility is [Cirneco](https://github.com/datacite/cirneco), generating the metadata XML according to the DataCite Metadata Schema, and registering DOI and metadata with the DataCite MDS. Like all tools mentioned in this post Cirneco is open source software, please reach out to us if you are interested in implementing similar functionality for your blog.

### Generating DOIs

The DOIs for this blog are generated automatically, using a modified base32 encoding algorithm that is provided by Cirneco, as discussed last week [@https://doi.org/10.5438/55E5-T5C0]. The DOI is generated and minted when a new post is pushed to [https://blog.datacite.org](https://blog.datacite.org). This avoids two problems: a) DOI-like strings in the wild before publication and b) the randomly generated DOI exists already (we can simply generate a new one). All DOIs are short, without semantic infomation that might change over time, and with a checksum to minimize transcription errors, for example **https://doi.org/10.5438/XCBJ-G7ZY**. Going forward we encourage users to link to the DataCite Blog using the DOI, as these links will continue to work even if we ever move the blog to a different location.

### Generating Metadata

For the generation of metadata, we need to strike a  balance between simple author provided metadata, but rich enough to aid discovery. We are doing this via three mechanisms:

* metadata provided by the author
* default metadata for the blog
* metadata automatically extracted from content

The metadata provided by the author are the typical metadata for blog posts, provided via [YAML front matter](https://gohugo.io/content/front-matter/) at the beginning of each post:

```yaml
---
layout: post
title: Eating your own Dog Food
author: mfenner
date: 2016-12-19
tags:
- datacite
- doi
- metadata
---
```

We can reuse all these metadata when generating DataCite metadata, using the tags as `subjects`.

The default metadata are metadata that always stay the same for the blog, such as `publisher`, `HostingInstitution` and `rights`. We can store them in a site-wide configuration file. We can also assume reasonable defaults that can be overridden in the YAML front matter, e.g. `resourceType` (we use [BlogPosting](https://schema.org/BlogPosting) with `resourceTypeGeneral` Text) and `version`. We store more information about authors outside the blog post, including `givenName`, `familyName` and `nameIdentifier` (we now show the ORCID ID of every blog author at the bottom of the post).

Finally, there are metadata that we can automatically extract from the blog post, and we are currently doing this for the `description` and `relatedIdentifier`. This blog uses Pandoc and BibTex to generate the references section at the end, and we can fetch this information and convert it into the format needed for `relatedIdentifier`.

Taken together we can provide all metadata that are *required* or *recommended* in the Metadata Schema documentation [-@https://doi.org/10.5438/0012], and we can do this without any extra effort for the author. The full XML is avalailable [here](https://data.datacite.org/content-resolver/application/x-datacite+xml/10.5438/4K3M-NYVG).

Not all blog posts need to be cited formally with metadata in a *references* list formatted according to a specific citation style. But these metadata greatly help with discovery, a search in DataCite Search for [eating dog food](http://search.datacite.org/works?query=eating+dog+food) will for example bring up this blog post as the first hit.

### Persistent storage

Using DOIs means that readers not only expect rich metadata that help with citation and discovery, but also that DataCite takes extra care to preserve the blog posts, thinking beyond the particular technical implementation or even the contiuing existence of this blog. This is an area where we do need to do more work, starting with a decision about the best archival format for a blog post (HTML, PDF, [JATS](https://jats.nlm.nih.gov/)?). For now blog posts are hosted in multiple Git repositories ([one of them on Github](https://github.com/datacite/blog)), and in two independent Amazon S3 buckets that each use [versioning](http://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html). Multiple locations with versioning are a good start, but more work is clearly needed.

### References
