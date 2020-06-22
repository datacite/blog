---
layout: post
title: The DataCite GraphQL API is now open for (pre-release) business
author:
  - mfenner
date: 2019-05-15T17:41:17.474Z
tags:
  - graphql
  - pid graph
  - freya
  - featured
image: /images/uploads/graphql.png
doi: 10.5438/qab1-n315
---
DataCite DOIs describe resources such as datasets, samples, software and publications with rich metadata. An important part of this metadata is the description of connections between resources that use persistent identifiers (PIDs) provided by DataCite and others (Crossref, ORCID, ROR, ISNI, IGSN, etc.). Together these resources and their connections form a graph, the PID Graph [@https://doi.org/10.5438/jwvf-8a66].

Accessing information available in this PID Graph, while preserving the rich connections between resources, is not trivial, and the JSON REST APIs that most PID service providers including DataCite are providing to users, while having a very good track record allowing users to access a single resource or a list of similar resources, might not be the best fit for more complex queries of the PID Graph.

Enter [GraphQL](https://graphql.org/), a query language that uses a graph as the underlying data model and aligns well with the kinds of queries that need to be supported in the PID Graph. GraphQL was started by Facebook in 2012, made available as Open Source software in 2015, and in 2019 has become a mainstream technology with broad support in terms of [libraries, tools and services](https://graphql.org/code/).

Today DataCite is announcing the pre-release version of the DataCite GraphQL API, and we invite you to try it out at [https://api.datacite.org/graphql](https://api.datacite.org/graphql). GraphQL works very differently from the REST APIs that most of us are familiar with: you need a special client application (e.g. [this one](https://electronjs.org/apps/graphiql) or [this one](https://www.graphqlbin.com/)) to use a GraphQL API, and all API calls are done to the same URL and using the POST method.

A typical starting point for a query in the PID Graph using GraphQL is a resource such as a dataset, researcher, organization, etc. identified by it's PID. For example:

```
{
  dataset(id: "https://doi.org/10.7910/dvn/nfzli3/cynkam") {
    titles {
      title
    }
  }
}
```
```
{
  publication(id: "https://doi.org/10.5438/jwvf-8a66") {
    titles {
      title
    }
  }
}
```
```
{
  software(id: "https://doi.org/10.5281/zenodo.1013940") {
    titles {
      title
    }
  }
}
```
```
{
  researcher(id: "https://orcid.org/0000-0002-1642-628X") {
    givenName
    familyName
  }
}
```
```
{
  organization(id: "https://ror.org/05rrcem69") {
    name
  }
}
```
Some of these PIDs are obviously not provided by DataCite, but the DataCite GraphQL supports them as well via a wrapper layer over, for example, the [ROR](https://ror.org) API.

GraphQL allows you to specify exactly the fields the query should return, including linked resources. For example all publications (with a DataCite DOI) authored by a particular researcher, and including the titles and relatedIdentifiers for those publications:

```
{
  researcher(id: "https://orcid.org/0000-0002-4695-7874") {
    id
    name
    givenName
    familyName
    publications {
      totalCount
      edges {
        node {
          id
          titles {
            title
          }
          relatedIdentifiers {
            relationType
            relatedIdentifier
          }
        }
      }
    }
  }
}
```
In addition to retrieving a specific resource using the PID, you can also do queries. For resources with DOIs, the query syntax is exactly the same as in DataCite Search or DOI Fabrica. For example: 

```
{
  softwares(query: "subjects.subject:python") {
    totalCount
    
    nodes {
      id
      titles {
        title
      }
      fundingReferences {
        funderIdentifier
        funderName
        awardTitle
        awardNumber
      }
    }
  }
}
```

<iframe width="800" height="450" src="https://www.youtube.com/embed/efvxGfU_oVM" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

After this short introduction it should have become clearer how GraphQL works differently from your typical REST API, and that GraphQL is a perfect fit for the kinds of queries one might want to do with the PID Graph. Now that you have had an introduction to the DataCite GraphQL API, you can try your own queries. 

The DataCite GraphQL API is a pre-release version, which means it's not yet final. It may contain bugs or might be missing functionality you expect. In particular more complex queries of the PID Graph are not yet supported. Your feedback is valuable for improving the API, so we encourage you to try it out and let us know what you think. Please use the [PID Graph section in the PID Forum](https://www.pidforum.org/c/pid-graph) to ask questions or suggest features. We'll keep updating the API, and we aim to get a final release out sometime later this year. 

## References
