# Group Module

## Purpose

Creates a Databricks group.

## Inputs

| Name | Description |
|------|-------------|
| display_name | Databricks group name |

## Outputs

| Name | Description |
|------|-------------|
| id | Group ID |
| display_name | Group name |

## Example

```hcl
module "platform_engineers" {
  source = "../../modules/group"

  display_name = "platform-engineers"
}
```