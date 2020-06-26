---
layout: post
title: Introducing the PID Services Registry
author:
  - rhallett
date: 2020-06-26
tags:
  - freya
  - pid services
  - pid graph
  - featured
image: /images/uploads/pidservices-screen.png
doi: 10.5438/pwjv-9m56
---
We are pleased to announce the launch of the new persistent identifier (PID) services registry available at [https://pidservices.org](https://pidservices.org), a new service to find services built upon different PIDs from core technology providers and those who integrate from across a variety of disciplinary areas.
This is a combined effort across multiple organizations as part of the EC-funded FREYA project grant ([777523](https://www.project-freya.eu)) with the aim of furthering discoverability of PIDs and the services that are built upon them.

![PID Services registry](/images/uploads/pidservices-screen.png)

The FREYA project is one of the projects contributing to the development of a European Open Science Cloud (EOSC). Persistent Identifiers (PIDs) for all entities in the research life cycle are a crucial component when developing a European research infrastructure. PIDs for services are part of this as well. Within the European Open Science Cloud, multiple services are being made available, and project FREYA is specifically contributing PID services. We are working with the EOSC Portal and Marketplace to reuse their requirements for the contribution of services, and to simplify transfer of PID service information.

The PID Services Registry provides an easy way to look up existing PID services. To ensure persistence and discoverability of the services, services are registered with a DOI and DOI metadata (using the resourceTypeGeneral “Service”), and are thus backed by existing DOI infrastructure. This means that we can reuse a lot of the metadata fields defined for DataCite DOIs, e.g. identifiers for the organizations providing the PID services or funding. It also means that we can reuse the established federated DOI infrastructure for registration and distribution of metadata. One challenge we encountered is that DOI metadata are for the most part rather generic and some of the more specific information needed to describe PID services can currently not be included. We will work with the community to address this.

The interface provides searching and filtering of the registered services and this is presented using a modern React web application built upon our DataCite GraphQL API. The services were put together by various organizational partners across disciplines, 35 currently registered and we would like to continue growing this.

If you are interested in more information or to register a service here, please contact DataCite support. We will also be planning a webinar to introduce the PID services registry on July 8th at 11am CEST.
