---
layout: post
title: Publishing tabular data as blog post
author: mfenner
tags:
 - csv
 - metadata
---
CSV in many ways is for data what markdown is for text documents: a very simple format that is both human- and machine-readable, and that – despite a number of shortcomings - is widely used. Given the popularity of markdown for writing blog posts, using CSV to publish blog posts with tabular data should be an obvious thing to do, and we have just published our [first blog post](/datacite-mandatory-properties/) using CSV data.

![Periodic table of elements. From: [Wikipedia](https://en.wikipedia.org/wiki/Periodic_table)](/assets/images/2016/05/periodic_table.jpg)

The DataCite blog uses the [Jekyll](https://jekyllrb.com) static site generator, and all blog posts are written in markdown format. All posts have their metadata in YAML format at the beginning of the file (separated by `---` from the main text).

```
---
layout: post
title: Publishing tabular data as blog post
author: mfenner
tags:
 - csv
 - metadata
---
```

Markdown is a nice format for writing texts, but doesn't work so well for tabular data, as the document quickly becomes difficult to edit and read for humans. CSV is a much better fit for tabular data, and can be written both with a general text editor, or with a spreadsheet program or other specialized tool.

To add the metadata required for every Jekyll blog post we are again adding a YAML header, the resulting file format is `CSVY`, about which we have talked [before](/thinking-about-csv/). Jekyll can be extended to understand many file formats beyond markdown. As a `CSVY` converter doesn't exist yet, we have written this converter and released [jekyll-csvy](https://github.com/datacite/jekyll-csvy) as Ruby gem, so that `CSVY` support can be easily added to every Jekyll-powered blog.

In HTML tabular data are typically displayed as HTML tables and this is what we are doing with the `CSVY` converter. This works well for tables that are not too big, and the converter supports inline markdown formatting (bold, italic, links, etc.) in table cells. Block formatting (e.g. lists) is on our list of future improvements, and we will polish the converter based on user feedback. We are of course also interested in embedding CSV tables within markdown documents, as this is a common use case.
