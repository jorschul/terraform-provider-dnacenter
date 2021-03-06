---
page_title: "dna_command_runner_run_command Data Source - terraform-provider-dnacenter"
subcategory: "Command Runner"
description: |-
  The dna_command_runner_run_command data source allows you to run a Cisco DNA Center command.
---

# Data Source dna_command_runner_run_command

The dna_command_runner_run_command data source allows you to run a Cisco DNA Center command.

## Example Usage

```hcl
data "dna_command_runner_run_command" "list" {
  provider = dnacenter
  commands     = ["pwd"]
  device_uuids = ["a9b86e42-6573-4f5d-a0bf-a743e290f46a"]
}
```

## Argument Reference

- `commands` - (Optional) Cisco DNA Center commands.
- `device_uuids` - (Optional) Cisco DNA Center device uuids.
- `description` - (Optional) Cisco DNA Center description.
- `timeout` - (Optional) Cisco DNA Center timeout.
- `name` - (Optional) Cisco DNA Center name.

## Attributes Reference

The following attributes are exported.

- `task_id` - Cisco DNA Center command runner task_id.
