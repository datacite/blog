---
layout: post
title: Three things you should know about our new DOI Citation Formatting service
author: kgarza
date: 2016-10-13
tags:
- citation
- docker
- featured
- infrastructure
image: https://blog.datacite.org/images/2016/10/citation_formatter.png
doi: 10.5072/DC13-VP4J
published: true
---
We are happy to announce the relaunch of our **DOI Citation Formatting** service, available at [http://citation.crosscite.org](http://citation.crosscite.org). The service uses the [citeproc.js](https://github.com/juris-m/citeproc-js) library by [Frank Bennett](https://twitter.com/fgbjr/)[ ](https://twitter.com/fgbjr/) together with the more than 5,000 citation styles made available by the [citationstyles.org](http://citationstyles.org) project. The service works with DOIs from [Crossref](http://www.crossref.org/), [mEDRA](https://www.medra.org/) and [ISTIC](http://www.doi.org.cn/portal/index.htm) in addition to DataCite DOIs. The main reason for the relaunch was a major upgrade of the backend, in addition we did some changes to the web user interface. For those interested on integrating this service with other systems there are three things you ought to know.

![DOI Citation Formatting Website](/images/2016/10/citation_formatter.png)

### 1. Docker is under the hood

We rebuilt the citation formatter using [Docker](https://www.docker.com/). Docker is a popular software containerization platform wrap a piece of software in a complete system that contains everything needed to run: code, runtime, system tools, system libraries. This guarantees that the software will always run exactly the same way, regardless of its environment.

Using Docker has a few practical implications. Deploying the software in a production environment becomes much easier, thus enabling quick deployments of bug fixes and updates to  include new  citation styles. An additional advantage is that running the DOI Citation Formatter service in  development or production becomes much easier for other people and organizations. Using Docker, a single one-liner on your terminal can help you to achieve this:

```
$ docker run -p 8000:80 crosscite/citeproc-doi-server
```

One can run Docker in any platform. Until recently Docker required Linux, but this spring [Docker for Mac ](https://docs.docker.com/engine/installation/mac/) and [Docker for Windows](https://docs.docker.com/engine/installation/windows/) was released and provides a nice wrapper around Docker so that the user experience is almost identical. Check the service [repository](https://github.com/crosscite/citeproc-doi-server) for further details regarding running the citation formatter service with Docker.

DataCite  is in the e process of **Dockerizing** many of our services. We are already running seven other DataCite services with Docker and plan to migrate all DataCite services to the Docker platform. Deploying software with Docker is much simpler than manually installing software on a server or virtual machine; this setup also allows us to run multiple servers with the same software in different locations, providing redundancy in cases of service outages.

### 2. This is an API

It might not come as a surprise that the DOI Citation Formatting service is also an API. You can format a given DOI using a simple call:

```
GET /format?doi=<doi>&style=<style>&lang=<locale>
```

Take for example this DOI 10.1145/2783446.2783605. To format it in the `chicago` style and in `french` you just need to do:

```
http://citation.datacite.org/format?doi=10.1145/2783446.2783605&style=chicago-fullnote-bibliography&lang=fr-FR
```

Additionally one can format a given citeproc text via

```
POST /format?style=<style>&lang=<lang>
```
The same thing can be done using [DOI content negotiation](http://citation.crosscite.org/docs.html),[ ](http://citation.crosscite.org/docs.html) where the backend calls the DOI Citation Formatting service, but sometimes a direct API call is easier, e.g. when using Javascript.

### 3. There is room for more work

We had additional ideas for the DOI citation formatting service while working on the relaunch. We would like to make the user interface more accessible. The service for example currently uses the style names form the [citationstyles.org](http://citationstyles.org/) library instead of the human-readable names.  We are very interested in feedback and will reevaluate the service frontend going forward.

In terms of the backend there are issues with managing dependencies on other software packages, meaning that for example we currently can not use the latest version of [node.js](https://nodejs.org/en/). Ideally we would like to package the software into an NPM module, making it easier to add citation formatting tools to other node.js projects.

In summary, rebuilding the DOI Citation Formatting service service with Docker, is a solid step in running services in a more efficient manner.
