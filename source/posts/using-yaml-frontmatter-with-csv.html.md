---
layout: post
title: Using YAML Frontmatter with CSV
author: mfenner
date: 2015-09-03
tags:
- csv
doi: 10.5438/5HZJ-5KDS
published: true
accession_number: MS-59-7223-5885
---
[CSV](https://en.wikipedia.org/wiki/Comma-separated_values) (comma-separated values) is a popular file format for data. It is popular because it is very simple: CSV is text-based and any application that can open text files can read or write CSV. This makes it a good fit for [digital preservation](http://www.digitalpreservation.gov/formats/fdd/fdd000323.shtml). We don't know how many of the datasets in DataCite use CSV because the `format` metadata attribute is not used much ([this query](http://search.labs.datacite.org/?q=format%3Acsv) gives you some examples), but we know that the number is big.READMORE

The CSV format has two important shortcomings: a) it is not clearly defined, and b) because of its simplicity it is almost impossible to add metadata describing the data in the CSV file. The closest thing we have to a CSV standard definition is [RFC 4180](https://tools.ietf.org/html/rfc4180), but that RFC clearly states that *It does not specify an Internet standard of any kind*.

If for some reason you think that the above sounds very similar to the situation with *markdown*, a simple format for text documents that [until recently](http://spec.commonmark.org/0.22/) was not clearly defined and that provides no easy way to add metadata (such as author, title or date), then you are smarter than me, since I didn't see the connection until [Javier Rovegno](https://github.com/jrovegno) [commented on my personal blog last week](http://blog.martinfenner.org/2013/06/29/metadata-in-scholarly-markdown/#comment-2220461075). He [proposes](http://jrovegno.github.io/csvy/) to use the *YAML frontmatter* spec for CSV files, and I think it is a brilliant idea.

[YAML frontmatter](http://jekyllrb.com/docs/frontmatter/) is a popular way to add metadata to markdown files. [YAML](http://yaml.org/) is a data serialization format that is very human-readable (in contrast to XML and to a lesser degree JSON). Frontmatter simply means to have the YAML section at the beginning of the document, e.g. the following, taken from the [Pandoc documentation](http://pandoc.org/README.html):

```
---
title:  'This is the title: it contains a colon'
author:
- name: Author One
  affiliation: University of Somewhere
- name: Author Two
  affiliation: University of Nowhere
tags: [nothing, nothingness]
abstract: |
  This is the abstract.

  It consists of two paragraphs.
---
```

By adding a similar section to CSV files we can add arbitrary metadata, including longer text such as a file description. In other words, all the metadata required to submit a CSV to a data repository and obtain a DOI. This makes data submission even simpler than using a zip bundle [as discussed in an earlier post](/reference-lists-and-tables-of-content/), or using the [DataUp tool](http://doi.org/10.12688/f1000research.3-6.v2), a Microsoft Excel add-in that is unfortunately no longer available.

Javier has picked `.csvy` as file extension for this modified file format (I like `.ycsv` a little bit better). I don't think we need to define what metadata can go into the YAML frontmatter, because there a number of different use cases. The only exception would be a standardized way to describe the columns in the CSV file, e.g.:

```
---
columns:
  - title: Purchase Date
    type: date
  - title: Item
    type: string
  - title: Amount (€)
    type: float
---
```

The best alternative to using CSV in combination with YAML is JSON, but that format is probably less popular than CSV for the typical data scientist (I like JSON for nested data, which would be very painful in CSV). Most people generate a separate file for CSV metadata now, risking that the data and metadata are separated.

Many tools for reading CSV files - including Microsoft Excel and the `read.csv` function in R - can ignore an arbitrary number of lines at the beginning of a CSV file, making the proposed format at least to some extend backwards-compatible. But I hope to soon see tools reading and writing YAML frontmatter in CSV files, taking full advantage of the format. In my own work I produce a lot of CSV files using R, and adding metadata to them will greatly enhance their usability. Even better if we start to see YAML frontmatter support for CSV in multiple languages, including Python, Javascript, Ruby and Julia.
