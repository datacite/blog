---
layout: post
title: Thinking about CSV
author: mfenner
date: 2016-05-04
tags:
- csv
doi: 10.5438/4QX3-RP8Y
published: false
---
This week some of us from DataCite are attending [CSVconf](http://csvconf.com/) in Berlin, and we are a conference sponsor and co-organizer.

> csv,conf is a non-profit community conference run by some folks who really love data and sharing knowledge. If you are as passionate about data and the application it has to society as us then you should join us in Berlin!

One important reason we are at CSVconf is that providing persistent identifiers and starndard metadata for research data, which in most cases are stored in tabular data formats such as CSV, is central to what DataCite is doing. And while DataCite provides a searchable index of metadata for these datasets, getting the metadata into the index is not as frictionless as one would hope.

The presentations and informal discussions at the conference have been very valuable and entertaining so far, and we still have most of the second day ahead. My personal highlight from the first day: [Richard Smith-Unna](https://twitter.com/blahah404) talking about **Easy, massive-scale reuse of scientific outputs**.

One topic that I have been thinking about the past two days is how to add metadata to CSV files while keeping the simplicity of the format. This is important for DataCite, as we want to make the process of registering datasets with metadata painless, and for individual researchers and small research groups the process should be as simple as possible. Two groups have done great work in this area and Jeni Tennison and Dan Fowler gave presentations about their work at CSVconf:

* **Jeni Tennison**: Making CSV part of the web, describing the work of the [CSV on the Web](https://www.w3.org/2013/csvw/wiki/Main_Page) W3C working group
* **Dan Fowler**: Data Packages and Frictionless Data for Research, talking about the work Open Knowledge has done on defining [data packages](http://dataprotocols.org/data-packages/)

Both groups use a JSON file to describe the metadata of an associated CSV file. While it is a straightforward process, it still feels as if we are leaving the simplicity of the CSV format. And when we generate a JSON file to describe the metadata, we might as well convert the CSV into JSON and put the metadata into the same file.

[Back in September](https://blog.datacite.org/using-yaml-frontmatter-with-csv/) I wrote about a different approach: adding the metadata directly to the CSV file. The following slides summarize this work:

<script async class="speakerdeck-embed" data-id="0485d6ed325144bcb155f771e6bfd842" data-ratio="1.33333333333333" src="//speakerdeck.com/assets/embed.js"></script>

CSVY uses a [YAML header](https://jekyllrb.com/docs/frontmatter/) for the metadata. This keeps the CSV file human readable, and is extensible to add even complex metadata. The downside is of course that it breaks the CSV format, but many CSV parsers support comments and can skip lines at the beginning of a file. Implementing CSVY support would thus only be a small step, and should be backwards compatible in many cases. You can for example use Excel to open these files, of course not parsing the metadata in the YAML header.

The beauty of this approach from a DataCite perspective is that we can now build a workflow where sending a single CSVY file to an appropriate API is all that is needed to deposit a CSV file into a data repository, and register a DOI with metadata for it.

There are obviously synergies with [CommonMark](http://commonmark.org/), *a strongly defined, highly compatible specification of Markdown*. Markdown is a lightweight markup format for text documents, similar to CSV being a lightweight format for data. Tables is one of the things in markdown that are not really lightweight, and CommonMark doesn't (yet) include a syntax for table formatting. We could use CSVY to make tables really simple in markdown. The metadata for the table can be added to the YAML header (something that is commonly used for markdown documents), and the CSV can be added directly to the markdown file. I use `,,,` to indicate that this is a table.

```
,,,CSVconf Speakers
id,name,title
rsmithunna,Richard Smith-Unna,"Easy, massive-scale reuse of scientific outputs"
amoser,Aurelia Moser,"This is Not a Map: Building Interactive Maps with CSVs, Creative Themes, and Curious Geometries"
tdoehman,Till Doehmen,There and back again - Automatic detection and conversion of logical table structures
,,,
```
Alternatively we might want to read in the CSV from an external file, using a tag that could look like this:

```
,[CSVconf Speakers](/_data/speakers.csvy)
```

CSVY is compatible with [CSV on the Web](https://www.w3.org/2013/csvw/wiki/Main_Page) and [data packages](http://dataprotocols.org/data-packages/) described above as it should be easy to convert the CSVY file with YAML header into a CSV file and JSON file with the metadata, and then host the two files on the web using the CSV on the Web recommendations.

CSVY is not meant to cover all use cases for CSV files, but should be useful to many people working with CSV. The critical factor is of course tool support in languages that commonly are used to work with CSV files, e.g. Python, R, and Javascript. I learned today that the [rio package for R](https://cran.r-project.org/web/packages/rio/index.html) is supporting CSVY, so that is a great start. For more information about CSVY go to [http://csvy.org](http://csvy.org).

