---
layout: post
title: Publishing tabular data as blog post
author: mfenner
date: 2016-05-20
tags:
- csv
- metadata
image: https://blog.datacite.org/images/2016/05/periodic_table.jpg
doi: 10.5438/KTR7-ZJJH
published: true
accession_number: MS-212-9893-7426
---
CSV in many ways is for data what Markdown is for text documents: a very simple format that is both human- and machine-readable, and that – despite a number of shortcomings - is widely used. Given the popularity of Markdown for writing blog posts, using CSV to publish blog posts with tabular data should be an obvious thing to do, and we have just published our first blog post using CSV data. The blog post shows Table 3 from the DataCite Metadata Schema [@https://doi.org/10.5438/0010], describing the mandatory properties.READMORE

![Periodic table of elements. From: [Wikipedia](https://en.wikipedia.org/wiki/Periodic_table)](/images/2016/05/periodic_table.jpg)

The DataCite blog uses the [Jekyll](https://jekyllrb.com) static site generator, and all blog posts are written in Markdown format. All posts have their metadata in YAML format at the beginning of the file (separated by `---` from the main text).

```
---
layout: post
title: Publishing tabular data as blog post
author: mfenner
tags:
 - csv
 - metadata
 - blog
---
```

Markdown is a nice format for writing texts, but doesn't work so well for tabular data, as the current Markdown table implementations are difficult to edit and read for humans for all but the simplest tables. CSV is a much better fit for tabular data, and can be written both with a general text editor, or with a spreadsheet program or other specialized tool.

To add the metadata required for every Jekyll blog post we are again adding a YAML header, the resulting file format is [CSVY](http://csvy.org), about which we have talked before [@https://blog.datacite.org/thinking-about-csv]. Jekyll can be extended to understand many file formats beyond Markdown. As a `CSVY` converter doesn't exist yet, we have written this converter and released **jekyll-csvy** as Ruby gem [@https://github.com/datacite/jekyll-csvy], so that `CSVY` support can be easily added to every Jekyll-powered blog.

In HTML tabular data are typically displayed as HTML tables, and this is what we are doing with the `CSVY` converter. This works well for tables that are not too wide, and the converter supports inline Markdown formatting (bold, italic, links, etc.) in table cells. Block formatting (e.g. lists) is on our list of future improvements, and we will polish the converter based on user feedback. We are of course also interested in embedding CSV tables within Markdown documents, as this is a common use case.

One important feature of using CSVY for blog posts is that the CSV remains available, and can be ingested and processed by tools that can read CSVY, e.g. using the R rio [@https://cran.r-project.org/web/packages/rio/index.html] package.

## References
