---
layout: post
title: Infrastructure Tips for the Non-Profit Startup
author: mfenner
date: '2015-12-23'
tags:
- infrastructure
accession_number: MS-279-2850-7580
doi: 10.5438/t0ap-d5w7
---
When I started as DataCite Technical Director four months ago, my first post [@https://blog.datacite.org/data-driven-development] on this blog was about what I called **Data-Driven Development**. The post included a lot of ideas on how to approach development and technical infrastructure. In this post I want to take a second look.READMORE

While I think the ideas expressed in the blog post are still true, I also learned that the focus of a Technical Director working for a small non-profit is somewhere else. The main challenge might be to properly run infrastructure and technical development with limited resources, both in terms of staff and money. While DataCite isn't a startup (the organization turned six years old this month), we face many of the same challenges. And as a non-profit, we can't take the approach of the typical startup, which in the early stages might have a small staff, but usually can spend more money than it is taking in.

### Automate as much as possible
The biggest cost is obviously staff, so it is very important to automate the technical infrastructure as much as possible. Luckily many powerful services and best practices have been developed in the last few years, under the umbrella term [DevOps](http://theagileadmin.com/what-is-devops/). The first step is to go with a cloud infrastructure provider rather than hosting your own servers. While the cost seems higher on paper, it is much easier to automate infrastructure using a cloud provider if you have a small technical team. DataCite infrastructure has been hosted by **Amazon Web Services** (AWS) since the beginning, and we currently see have no plans to change that.

A large number of tools integrate with AWS, three services that have become essential for DataCite in the past few months are [Terraform](https://terraform.io/), [Packer](https://www.packer.io/) and [Chef]():

* **Terraform** treats infrastructure as code and allows us to have our AWS configuration (EC2 instances, Virtual Private Network, Security Groups, etc.) managed with a set of configuration files stored in a private git repo, e.g.

```
resource "aws_route_table" "production" {
    vpc_id = "${aws_vpc.production.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.production.id}"
    }

    tags {
        Name = "production"
    }
}

resource "aws_main_route_table_association" "production" {
    vpc_id = "${aws_vpc.production.id}"
    route_table_id = "${aws_route_table.production.id}"
}

resource "aws_route_table_association" "production" {
    subnet_id = "${aws_subnet.production.id}"
    route_table_id = "${aws_route_table.production.id}"
}

resource "aws_security_group" "production" {
  name = "production"
  description = "production"
  vpc_id = "${aws_vpc.production.id}"
```

* **Packer** automates the creation of machine and container images. We use Packer to automatically build Amazon Machine Images (AMIs) that we then deploy as EC2 instances using terraform

![Packer](/images/2015/12/Bildschirmfoto-2015-12-23-um-11-29-50.png)

* **Chef** for automated configuration management. We use Chef to help Packer build AMIs.

```
==> default: [2015-12-22T23:03:53+00:00] INFO: template[/etc/nginx/sites-enabled/dlm.conf] updated file contents /etc/nginx/sites-enabled/dlm.conf
==> default:
==> default: - update content in file /etc/nginx/sites-enabled/dlm.conf from c2a428 to fe08d6
==> default:
==> default: --- /etc/nginx/sites-enabled/dlm.conf  2015-12-22 22:31:52.136854399 +0000
==> default:
==> default: +++ /etc/nginx/sites-enabled/.dlm.conf20151222-13309-1bw1o6p 2015-12-22 23:03:53.161869265 +0000
==> default:
==> default: @@ -1,4 +1,4 @@
==> default:
==> default: -upstream $backend {
==> default:
```

Terraform, Packer and Chef are open source. We use [Atlas](https://hashicorp.com/atlas.html) (commercial, but free for small installations) to combine them into a web-based team workflow. We hope to complete the migration for all DataCite services in the coming months.

### Think carefully about Build vs. Buy
A common approach in the commercial startup world is to focus on the particular product or service that the organization wants to build, and then outsource almost everything else. This is important when there is only a small number of staff and you want to move fast. While this approach also applies to non-profit organizations, the decision of **build vs. buy** will sometimes be different, because some of these outsourced services would just be too expensive, or create a lock-in that would be a problem later on.

But for the most part I think the risk of trying to build too much yourself is bigger, in particular since many external services have monthly plans, and there are often several alternatives. The biggest consideration is the risk of lock-in, which is of course what all service providers are aiming for.

### Open Source where it is important
The software written by DataCite staff to run the DataCite services is all open source, hosted in a [public Github repository](https://github.com/datacite). This is important for a number of reasons, best explained in the Principles of Open Scholarly Infrastructures [@https://doi.org/10.6084/M9.FIGSHARE.1314859]. One nice side effect is that a number of important external services are free for open source projects, for example Github or the [Travis CI](https://travis-ci.org/) continuous integration service.

What this doesn't mean is that all software that DataCite uses should be open source. I like the approach that ORCID has taken in the ORCID Principles [@https://orcid.org/about/what-is-orcid/principles]:

> All software developed by ORCID will be publicly released under an Open Source Software license approved by the Open Source Initiative. For the software it adopts, ORCID will prefer Open Source.

Some of the services mentioned above (e.g. Google Apps, Slack, AWS) are obviously not open source, and that is ok if they don't create a lock-in or serious dependency for running the DataCite infrastructure. An interesting approach is hosted open source software, such as this blog. We are currently paying [ghost.org](https://ghost.org/) a small amount of money to host the blog for us, but we can always move the blog somewhere else or start hosting it ourselves. Our use of AWS is more complex, but similar, all the software (databases, web servers, etc.) we are running is open source, and we can move to a different hosting provider if that is ever needed.

### Get Non-Profit Discounts
Some organizations provide their infrastructure services for free or a discount to non-profit organizations. DataCite started using [Google Apps](https://apps.google.com/) and [Slack](https://slack.com/) in August. Both are free for eligible non-profits, for other services such as [Office 365](https://products.office.com/en-us/nonprofit/office-365-nonprofit) we get a deep discount.

Slack has become an essential internal communication tool. Not only because the current five staff members are in three different countries, but also because Slack nicely integrates with a large number of services. This greatly helps with keeping everyone on the same page.

![Slack](/images/2015/12/Bildschirmfoto-2015-12-23-um-11-26-47.png)

### Start small but make changes easy
One trap you can fall into is to think too big when starting out. You should build or buy what you need now or in the near future. At the same time you should make sure that whatever solution you come up with will scale up when needed.

There are a number of services out there that provide wonderful value, but are not really appropriate for a small non-profit. They solve problems of much larger organizations, e.g. auto-scaling of servers or centralized data analytics.

### Cooperate with other non-profit organizations
One important advantage that non-profits have over commercial startups is that it is easier for them to cooperate with other organizations. In the case of DataCite this primarily means with DataCite members and CrossRef.

Cooperation takes time and effort, and staff time is usually limited when you are a small organization and also have a lot of technical work on your plate. But it is still a worthwhile investment. And I think non-profit organizations in the scholarly communication space could cooperate much more. While there are many cooperations around specific projects and initiatives, I think most of the basics of running the organization, and the technical infrastructure in particular, are not really discussed much. Small non-profits such as DataCite face particular challenges that are different from both commercial organizations and larger non-profits such as academic institutions. I want to spend more time in 2016 working on this, so please contact me if you are interested to help.

## References
