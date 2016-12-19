---
layout: post
title: Adding References to the DataCite Blog
author: mfenner
date: 2015-09-16
tags:
- blog
doi: 10.5438/2WFX-2HZ1
published: true
---
We launched this blog six weeks ago on a hosted version of [Ghost](https://ghost.org/), the open source blogging platform. Ghost doesn't have all the features of Wordpress or other more mature blogging platforms, but it is a pleasure to use. The other alternative would have been to put the blog up on the Drupal-based main [DataCite website](http://www.datacite.org), but Drupal is really a content-management system and usually not the best choice for a serious blog.

What all the above systems (Ghost, Wordpress, Drupal) have in common is that they need a web server and database backend. This is fine for the standard blog, but it becomes a problem once you start thinking about customizing your blog. In the case of the DataCite blog I want to be able to provide the following:

* the addition of proper citations and references
* a PDF (and possibly ePub) version for downloading and archiving
* a register blog posts with a DOI

Since DataCite is in the business of providing DOI names for scholarly content, the above is a pretty obvious wish list. Some people might argue about the content of this blog needing a DOI, but DOIs have been used for similar content for many years, whether it is for frontmatter content (editorials, opinion pieces, etc.) in journals, or in services such as [Nature News](http://www.nature.com/news/).

Out of the box the standard blogging platforms mentioned above don't support references or DOI registration, so a bit of extra work is needed. The easiest way to do this is to switch to a  simpler blogging platform. Luckily there are a lot of choices among these so-called **static site generators**, which don't need a database and simply generate HTML files. Adding the features from the above wish list then becomes a straightforward process and that is what I have started doing.

As of this week, this blog is also [available in DataCite Labs](http://blog.labs.datacite.org), and we now support references, as you can see in [this blog post](http://blog.labs.datacite.org/when-counting-is-hard/) from two weeks ago.

![](/images/2015/09/Bildschirmfoto-2015-09-15-um-20-19-48.png)

The picture is from the PDF version of the post, where the integration with the blog is still ongoing.

The *DataCite Labs Blog* looks very similar to the *DataCite Blog*, but under the hood is using the [Jekyll](https://github.com/jekyll/jekyll) static site generator, and the [Pandoc](http://pandoc.org/README.html) document conversion software. This is a popular combination used by several scholarly bloggers, e.g. [Carl Boettiger](http://www.carlboettiger.info/2015/01/07/automated-knitr-in-jekyll.html). Jekyll is written in Ruby, and there are at least two Ruby gems that allow automatic deposition in Zenodo ([zenodo gem](https://github.com/sprotocols/zenodo)), or the DataCite Metadata Store ([datacite_doi_ify gem](https://github.com/datacite/datacite_doi_ify)) to automate archiving and DOI registration.

Of course DOI registration doesn't all of the sudden make blog content more ​​*scholarly*​, but it can make it easier to find. For example, blog posts can be found by searching CrossRef or DataCite's metadata, and links can be discovered between blog posts and scholarly articles (or datasets) by using the DataCite metrics pilot, which we [announced last week](/announcing-data-level-metrics-in-datacite-labs/). To facilitate this we need to deposit the references with the metadata we send to DataCite, e.g. for the three scholarly articles, one software repository, one dataset and one data paper you see in the picture above.

A little more work is needed before the *Labs Blog* can become the official *DataCite Blog*, and as always we appreciate your feedback. The blog itself is stored in a [public Github repository](https://github.com/datacite/blog), so feel free to reuse any of the code. We use the [Travis](https://travis-ci.org/) continuous integration tool to automatically generate the HTML pages for the blog, and then push the newly generated HTML content to [Amazon S3](https://aws.amazon.com/s3/) for hosting.
