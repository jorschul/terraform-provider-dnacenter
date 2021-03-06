---
page_title: "dna_site_count Data Source - terraform-provider-dnacenter"
subcategory: "Sites"
description: |-
  The dna_site_count data source allows you to count the amount of Cisco DNA Center sites.
---

# Data Source dna_site_count

The dna_site_count data source allows you to count the amount of Cisco DNA Center sites.

## Example Usage

```hcl
data "dna_site_count" "response" {
  provider = dnacenter
  site_id  = "1ba55132-0fb8-4986-a31e-674d30e8b8ee"
}
```

## Argument Reference

- `site_id` - (Required) The site id param.

## Attributes Reference

The following attributes are exported.

- `response` - Cisco DNA Center sites count.
