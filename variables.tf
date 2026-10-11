variable "apm_synthetics_dedicated_vantage_points" {
  description = <<EOT
Map of apm_synthetics_dedicated_vantage_points, attributes below
Required:
    - apm_domain_id
    - display_name
    - region
    - dvp_stack_details (block):
        - dvp_stack_id (required)
        - dvp_stack_type (required)
        - dvp_stream_id (required)
        - dvp_version (required)
Optional:
    - defined_tags
    - freeform_tags
    - status
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    apm_domain_id = string
    display_name  = string
    region        = string
    defined_tags  = optional(map(string))
    freeform_tags = optional(map(string))
    status        = optional(string)
    dvp_stack_details = object({
      dvp_stack_id   = string
      dvp_stack_type = string
      dvp_stream_id  = string
      dvp_version    = string
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.apm_synthetics_dedicated_vantage_points : (
        contains([for v in ["ORACLE_RM_STACK"] : lower(v)], lower(v.dvp_stack_details.dvp_stack_type))
      )
    ])
    error_message = "must be one of: \"ORACLE_RM_STACK\""
  }
}

