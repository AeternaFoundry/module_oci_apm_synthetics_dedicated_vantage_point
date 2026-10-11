output "apm_synthetics_dedicated_vantage_points_id" {
  description = "Map of id values across all apm_synthetics_dedicated_vantage_points, keyed the same as var.apm_synthetics_dedicated_vantage_points except keys with no id are omitted"
  value       = { for k, v in oci_apm_synthetics_dedicated_vantage_point.apm_synthetics_dedicated_vantage_points : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apm_synthetics_dedicated_vantage_points_apm_domain_id" {
  description = "Map of apm_domain_id values across all apm_synthetics_dedicated_vantage_points, keyed the same as var.apm_synthetics_dedicated_vantage_points except keys with no apm_domain_id are omitted"
  value       = { for k, v in oci_apm_synthetics_dedicated_vantage_point.apm_synthetics_dedicated_vantage_points : k => v.apm_domain_id if v.apm_domain_id != null && length(v.apm_domain_id) > 0 }
}
output "apm_synthetics_dedicated_vantage_points_defined_tags" {
  description = "Map of defined_tags values across all apm_synthetics_dedicated_vantage_points, keyed the same as var.apm_synthetics_dedicated_vantage_points except keys with no defined_tags are omitted"
  value       = { for k, v in oci_apm_synthetics_dedicated_vantage_point.apm_synthetics_dedicated_vantage_points : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "apm_synthetics_dedicated_vantage_points_display_name" {
  description = "Map of display_name values across all apm_synthetics_dedicated_vantage_points, keyed the same as var.apm_synthetics_dedicated_vantage_points except keys with no display_name are omitted"
  value       = { for k, v in oci_apm_synthetics_dedicated_vantage_point.apm_synthetics_dedicated_vantage_points : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "apm_synthetics_dedicated_vantage_points_dvp_stack_details" {
  description = "Map of dvp_stack_details values across all apm_synthetics_dedicated_vantage_points, keyed the same as var.apm_synthetics_dedicated_vantage_points except keys with no dvp_stack_details are omitted"
  value       = { for k, v in oci_apm_synthetics_dedicated_vantage_point.apm_synthetics_dedicated_vantage_points : k => one(v.dvp_stack_details) if v.dvp_stack_details != null && length(v.dvp_stack_details) > 0 }
}
output "apm_synthetics_dedicated_vantage_points_freeform_tags" {
  description = "Map of freeform_tags values across all apm_synthetics_dedicated_vantage_points, keyed the same as var.apm_synthetics_dedicated_vantage_points except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_apm_synthetics_dedicated_vantage_point.apm_synthetics_dedicated_vantage_points : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "apm_synthetics_dedicated_vantage_points_monitor_status_count_map" {
  description = "Map of monitor_status_count_map values across all apm_synthetics_dedicated_vantage_points, keyed the same as var.apm_synthetics_dedicated_vantage_points except keys with no monitor_status_count_map are omitted"
  value       = { for k, v in oci_apm_synthetics_dedicated_vantage_point.apm_synthetics_dedicated_vantage_points : k => v.monitor_status_count_map if v.monitor_status_count_map != null && length(v.monitor_status_count_map) > 0 }
}
output "apm_synthetics_dedicated_vantage_points_name" {
  description = "Map of name values across all apm_synthetics_dedicated_vantage_points, keyed the same as var.apm_synthetics_dedicated_vantage_points except keys with no name are omitted"
  value       = { for k, v in oci_apm_synthetics_dedicated_vantage_point.apm_synthetics_dedicated_vantage_points : k => v.name if v.name != null && length(v.name) > 0 }
}
output "apm_synthetics_dedicated_vantage_points_region" {
  description = "Map of region values across all apm_synthetics_dedicated_vantage_points, keyed the same as var.apm_synthetics_dedicated_vantage_points except keys with no region are omitted"
  value       = { for k, v in oci_apm_synthetics_dedicated_vantage_point.apm_synthetics_dedicated_vantage_points : k => v.region if v.region != null && length(v.region) > 0 }
}
output "apm_synthetics_dedicated_vantage_points_status" {
  description = "Map of status values across all apm_synthetics_dedicated_vantage_points, keyed the same as var.apm_synthetics_dedicated_vantage_points except keys with no status are omitted"
  value       = { for k, v in oci_apm_synthetics_dedicated_vantage_point.apm_synthetics_dedicated_vantage_points : k => v.status if v.status != null && length(v.status) > 0 }
}
output "apm_synthetics_dedicated_vantage_points_time_created" {
  description = "Map of time_created values across all apm_synthetics_dedicated_vantage_points, keyed the same as var.apm_synthetics_dedicated_vantage_points except keys with no time_created are omitted"
  value       = { for k, v in oci_apm_synthetics_dedicated_vantage_point.apm_synthetics_dedicated_vantage_points : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "apm_synthetics_dedicated_vantage_points_time_updated" {
  description = "Map of time_updated values across all apm_synthetics_dedicated_vantage_points, keyed the same as var.apm_synthetics_dedicated_vantage_points except keys with no time_updated are omitted"
  value       = { for k, v in oci_apm_synthetics_dedicated_vantage_point.apm_synthetics_dedicated_vantage_points : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

