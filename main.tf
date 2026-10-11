resource "oci_apm_synthetics_dedicated_vantage_point" "apm_synthetics_dedicated_vantage_points" {
  for_each = var.apm_synthetics_dedicated_vantage_points

  apm_domain_id = each.value.apm_domain_id
  display_name  = each.value.display_name
  region        = each.value.region
  defined_tags  = each.value.defined_tags
  freeform_tags = each.value.freeform_tags
  status        = each.value.status

  dvp_stack_details {
    dvp_stack_id   = each.value.dvp_stack_details.dvp_stack_id
    dvp_stack_type = each.value.dvp_stack_details.dvp_stack_type
    dvp_stream_id  = each.value.dvp_stack_details.dvp_stream_id
    dvp_version    = each.value.dvp_stack_details.dvp_version
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

