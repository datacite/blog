---
layout: post
title: Sunsetting of the EZ API
author:
  - swimalaratne
date: '2021-01-18'
tags:
  - featured
doi: 10.5438/9qc4-4z37
---
The [DataCite EZ API](https://support.datacite.org/v1.1/reference#ez-api) was first introduced in 2017 to assist those of our Members who transitioned from the California Digital Library (CDL) EZID service. Users were able to make the same API calls they used to make to EZID, just using the DataCite endpoint instead. This was introduced as a temporary solution to support easy transition of services. Finally, 4 years later, it is time to retire the DataCite EZ API. We are focusing more on consolidation of our services and will be discontinuing the DataCite EZ API from 31st of December 2021. 

For those who are still using the DataCite EZ API, we recommend moving to our [DataCite REST API](https://support.datacite.org/reference/introduction), which is DataCite's primary API. The DataCite REST API allows any user to retrieve, query and browse DataCite DOI metadata records. DataCite Repositories can register DOIs and DataCite Members can manage Repositories and prefixes via the REST API using their credentials.

You can follow [DataCite REST API Guide](https://support.datacite.org/docs/api) to start transitioning to using our REST API. If you have test accounts set up, those credentials can be used to test your implementation via <https://api.test.datacite.org/>. Please note this service should only be used for testing purposes and should not be integrated with your production workflows. 

If you have any questions or issues transitioning to our REST API please reach out to us via [support](mailto:support@datacite.org). We will be in touch with individual users later this year to ensure their transition is progressing smoothly.
