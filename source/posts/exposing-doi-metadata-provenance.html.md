---
layout: post
title: Exposing DOI metadata provenance
author:
  - mfenner
date: 2019-04-10
tags:
  - featured
  - provenance
  - metadata
  - freya
image: /images/uploads/signature_claude_monet_by_ranchan22-d59p48w.jpg
doi: 10.5438/wy92-xj57
---
DOI metadata provenance is describing the history of a particular DOI metadata record, i.e. what changes were made when and by whom. This information is now stored and provided via an API for all DOI registrations since March 10, 2019. 

The following provenance information is now available via a new `/activities` REST API endpoint:

* **prov:wasGeneratedBy**. The unique identifier for the activity making changes to a DOI record.
* **prov:generatedAtTime**. Timestamp of the activity.
* **prov:wasDerivedFrom**. The DOI for which the changes are being tracked.
* **prov:wasAttributedTo**. The client or provider account responsible for the changes.
* **action**. Can be either create, update or delete.
* **version**. Version number for the DOI record.
* **changes**. Changes made to DOI metadata, broken down by attribute, with both old and new value.

The main use case is more transparency about changes to DOI metadata, including changes of the URL. You will for example be able to see the provenance for the DOI metadata for this blog post via [https://api.datacite.org/dois/10.5438/wy92-xj57/activities](https://api.datacite.org/dois/10.5438/wy92-xj57/activities). This is mainly useful if something goes wrong, but for example helps explain why a DOI record sometimes has a new `updated date` even though the member didn't make any changes (the most likely reason is that we stored [link checker](https://support.datacite.org/docs/link-checker) results and you would see that in the provenance record).

We have captured more than 3.6 million activities around DOI metadata records since starting this new service in March. Going forward, we will enhance the functionality, e.g. by providing the same information in DOI Fabrica in addition to the API. Tracking the provenance also allows users to revert changes that were made inadvertently, and it allows DataCite to build services that are triggered when a particular change is made to DOI metadata. 

This work has been done as part of the [FREYA project](https://www.project-freya.eu/en/about/mission), which aims to expand the technical and social infrastructure for persistent identifiers in Europe. For more information about the new activities API please visit our [support pages for this new service](https://support.datacite.org/docs/tracking-provenance), or [send us an email](mailto:support@datacite.org).

