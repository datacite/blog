---
layout: post
title: DOI Fabrica Form Gets a Facelift
author:
  - rdasler
date: 2019-04-25T14:56:38.169Z
tags:
  - featured
image: /images/uploads/2019-04-25-11-39-28.2019-04-25-11_40_48.gif
doi: 10.5438/rzb6-g292
---


When we launched the DOI registration form in DOI Fabrica last year, we purposely kept it pretty basic. We wanted to get the most-used metadata fields in front of the people who needed them as soon as possible. But it’s always been our intention to expand the form and make it more useful for more metadata needs for more people. Today we’re announcing a new and improved DOI Fabrica form that takes a step in that direction. 

## What has changed?

We've improved support for three key metadata fields in the form: Creators, Titles, and Description. These fields are tricky, because they are repeatable and each of them allows multiple properties. Improving how we handle these fields in the form helps to align the capabilities of the form with the capabilities of the both the APIs and the DOI Fabrica XML upload, making it easier to switch back and forth between different modes of DOI maintenance. Getting these fields right is also an important step toward eventually adding other fields from the [DataCite Metadata Schema](https://schema.datacite.org) to the form. 

Taking the Creator field as an example, you’re now able to add multiple creators individually, instead of in a list. To encourage consistency and exactness of metadata entry, we want to use persistent identifiers wherever possible, so we’ve implemented an ORCID ID lookup for creators that are persons and a ROR ID lookup for creators that are organizations. Just paste in the relevant ID, and the form will automatically populate with the information you need. You can also use the ROR service to look up names of affiliations for persons, but at this point our schema doesn’t yet support affiliation identifiers. 

![Adding a Creator by inserting an ORCID ID](/images/uploads/2019-04-25-11-39-28.2019-04-25-11_40_48.gif "Adding a Creator by inserting an ORCID ID")

Note that the form now requires you to enter Given Name and Family Name separately. The Name field then shows how the name will be displayed in DataCite services, but the full name is is not editable. This is to maintain consistency of entered metadata and to make it clearer for both DataCite and downstream services to appropriately identify the proper rendering of a person’s name. Similarly, to safeguard against accidental attribution, if you use an ORCID ID to autopopulate a personal name, none of the name fields will be editable. 

We’ve also introduced a new validation for the `seriesInformation` description type. Since this is a free-text field, the information that is submitted is not always consistent, and it makes it difficult to parse for display and data mining. The Fabrica form will now warn you when the information you’ve put into a description with this description type doesn’t conform to our preferred way of parsing this type of information. This warning won’t prevent you from creating or updating your DOI, but it will hopefully encourage more consistent data entry across clients. 

![Validation warning for seriesInformation description type](/images/uploads/screenshot-2019-04-25-at-16.59.04.png "Validation warning for seriesInformation description type")

## Metadata schema in the wild
This brings us to another important aspect of the form update. By tying the form more directly to the fields and their properties as they are represented in the schema, the form also serves as a mechanism for real-life feedback to the metadata schema. Every piece of information you can enter for the fields the form supports corresponds to a property in the schema, and if the schema didn’t have a way to represent something, we didn’t invent one. If anything feels inconsistent to you as you use the form, let us know, and it could prompt us to adapt the schema to better conform to real-life use cases.

## Where’s my favorite optional metadata field? 
Enthusiasts of detailed metadata will notice that it’s still not yet possible to use the DOI Fabrica form to submit metadata for every single one of the recommended and optional fields. This is still something that’s on our radar, and we do eventually want to include every field from the schema in the DOI Fabrica form. As mentioned above, the Creator, Title, and Description fields posed more challenges than the other fields. Now that those challenges are solved, it will be comparatively easier to implement the remaining fields at a later time. You can check out our plans and leave us feedback on our [new roadmap portal](https://datacite.org/roadmap.html).

As always, if you have questions, comments, or concerns, please let us know by contacting support at [support@datacite.org](mailto:support@datacite.org). 
