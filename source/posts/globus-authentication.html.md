---
layout: post
title: DataCite switches to Globus for Authentication
author:
  - mfenner
date: 2019-10-14T05:57:31.618Z
tags:
  - authentication
  - globus
---
Access to some DataCite resources and services requires authentication so that DataCite knows who is making a request. This includes [Fabrica](https://doi.datacite.org/), our DOI registration service that requires a member account, but also our integration with ORCID in the [Profiles](https://profiles.datacite.org) service, where researchers authenticate with us to allow us to send information about content with DataCite DOIs authored by them to their ORCID record. Authentication needs to be secure, not allowing access by the wrong people, but also practical, as otherwise poor password behavior with reduced security might result, as highlighted in the [2019 update of the NIST guidelines](https://securityboulevard.com/2019/03/nist-800-63-password-guidelines/) which set the industry standard. With this in mind, we have two main goals for improving authentication with DataCite services: a) consolidate authentication into a single service to simply access to all secured resources, and b) phase-out of institutional logins in favor of more secure personal accounts.

We started work on improving DataCite authentication two months ago, beginning with a major upgrade of the [Profiles](https://profiles.datacite.org) service. We are relaunching this upgraded service today. Most changes are under the hood and not visible to users; they include much-needed maintenance work, but also an improved administration interface for DataCite staff. 

One visible change for users is the new sign in via Globus. [Globus](https://www.globus.org/), an initiative at the University of Chicago - and a DataCite member -, is a non-profit service that provides reliable data transfer and sharing, and authentication services for the research community. Globus’ overall mission not only aligns well with DataCite’s mission but its authentication service, Globus Auth, provides the functionality needed by DataCite and DataCite users. The previous version of the Profiles service allowed login via ORCID, Google, and GitHub, but did not support the use of institutional identities. Globus allows users to login with their institutional account, supporting several hundred such federated identities via InCommon and eduGAIN federations and other custom identity providers. 


DataCite now integrates with Globus via OpenID Connect, and requires that users login either with their ORCID identity or with another identity (e.g., an institutional account) linked to that ORCID identity via Globus. We use the ORCID ID to identify the user independent of email addresses or other information that may change over time, aligned with the recommendation of using the eduPersonORCID property in Federated Identity Management. For authenticating ORCID claiming, a second step is needed, obtaining the required permissions directly from ORCID to write to the user’s ORCID record. This integration of Globus allows DataCite to focus on providing persistent identifier services, while relying on Globus for authentication services.

While connecting authentication via OpenID Connect is straightforward, we made the process even easier for Ruby users by writing a Ruby gem (omniauth-globus) that requires only the minimal configuration of a CLIENT_ID, CLIENT_SECRET, and REDIRECT_URL.

This change is just the first step in our work on improving authentication to DataCite services. As a next step, we will provide personal accounts, roles, and permissions for our DOI registration service Fabrica, which currently uses a separate authentication workflow and institutional accounts. We will continue partnering with Globus to wrap up this work before the end of 2019 but will keep the login option via institutional accounts until the end of 2020. In early 2020, we will start providing authentication tokens (instead of basic authentication via username/password) for API users, and we will improve our integration with ORCID via a pilot of the ORCID token delegation workflow. 

If you have any questions about these authentication updates, don’t hesitate to contact us at [support@datacite.org](mailto:support@datacite.org).

## References
