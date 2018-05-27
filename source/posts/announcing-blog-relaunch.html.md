---
layout: post
title: Announcing the DataCite Blog Relaunch
author: 
- mfenner
date: '2015-12-28'
tags:
- blog
doi: 10.5438/xcbj-g7zy
---
The DataCite blog has migrated to a new platform, from a hosted version at [Ghost](https://ghost.org/) to a self-hosted version using [Jekyll](https://jekyllrb.com/). The main reason for this change is that it gives us more control over the formatting of blog posts. The migration was easy as both Ghost and Jekyll use [markdown](http://support.ghost.org/markdown-guide/) to format blog posts, and the blog post URLs haven't changed.READMORE

Other than some layout changes that make the blog look and feel more consistent with other DataCite sites, the other main difference that users will see is that the blog now uses formal citations and reference lists for scholarly content. A September blog post [@https://blog.datacite.org/adding-references-to-the-datacite-blog] described the background for this, and a good example where you can see the change is the post summarizing the September persistent identifier workshop in Paris [@https://blog.datacite.org/recap].

Below are some tips if you also want to add formal references to your blog:

1. Use markdown format and Jekyll with [Pandoc](http://pandoc.org/) to convert markdown to html. You can add Pandoc support to Jekyll by adding `gem 'jekyll-pandoc'` to the Jekyll Gemfile and the following into `_config.yml`:

```yaml
pandoc:
  extensions:
    - normalize
    - smart
    - mathjax
    - csl: _styles/apa.csl
    - bibliography: bibliography/references.bib
```

The DataCite blog uses the [APA citation style](http://www.apastyle.org/) and stores the references in BibTex format [here](https://blog.datacite.org/bibliography/references.bib). Pandoc uses the [Citation Style Language](http://citationstyles.org/), so it is easy to switch to any of the 5000+ available styles.

2. You can use [Github Pages](https://pages.github.com/) to host the blog, but if you want to use `https`, and/or more flexibility with caching and domain names I recommend [Amazon S3](https://aws.amazon.com/s3/). Unless your blog sees a lot of traffic I doubt that the monthly cost is more than $2-5. One other advantage is that you don't have to deal with multiple git branches – which is how Github Pages stores the deployed website – as this can be confusing.

3. Jekyll is a static site generator, i.e. all blog pages are generated as HTML and no database backend is needed. You can build and deploy to S3 from your local computer, but I highly recommend to use a continuous integration tool for this.
DataCite uses [Travis CI](https://travis-ci.com/), which is free to use for open source projects. Travis CI has nice support for deployment to Amazon S3, rebuilding all pages and deploying to Amazon S3 takes about three minutes, and is triggered when we commit new code (e.g. a new blog post) to the [blog](https://github.com/datacite/blog) git repository. For testing new features we deploy the `test` git branch to [https://blog.test.datacite.org](https://blog.test.datacite.org).

4. Since the `1.15.2` release in November Pandoc supports `://` in citation keys. This makes it easy to generate consistent citation keys using the `URL` field as the key, in particular when sharing references with others. One nice side effect is that we can use this key (which Pandoc puts into the `data-cites` attribute of the generated HTML) to generate a link from the in-text citation with a little bit of Javascript, e.g. this one: [@https://blog.datacite.org/recap].

This blog post is not only the last post on this blog in 2015, but also the 25th post since we launched this blog in August, a nice little milestone at the end of the year. We wish all readers a great start into the new year.

## References
