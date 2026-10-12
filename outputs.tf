output "outputs_lookup_id" {
  description = "Map of id values across all outputs_lookup, keyed the same as var.outputs_lookup except keys with no id are omitted"
  value       = { for k, v in data.tfe_outputs.outputs_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "outputs_lookup_nonsensitive_values" {
  description = "Map of nonsensitive_values values across all outputs_lookup, keyed the same as var.outputs_lookup except keys with no nonsensitive_values are omitted"
  value       = { for k, v in data.tfe_outputs.outputs_lookup : k => v.nonsensitive_values if v.nonsensitive_values != null }
}
output "outputs_lookup_organization" {
  description = "Map of organization values across all outputs_lookup, keyed the same as var.outputs_lookup except keys with no organization are omitted"
  value       = { for k, v in data.tfe_outputs.outputs_lookup : k => v.organization if v.organization != null && length(v.organization) > 0 }
}
output "outputs_lookup_values" {
  description = "Map of values values across all outputs_lookup, keyed the same as var.outputs_lookup except keys with no values are omitted"
  value       = { for k, v in data.tfe_outputs.outputs_lookup : k => v.values if v.values != null }
  sensitive   = true
}
output "outputs_lookup_workspace" {
  description = "Map of workspace values across all outputs_lookup, keyed the same as var.outputs_lookup except keys with no workspace are omitted"
  value       = { for k, v in data.tfe_outputs.outputs_lookup : k => v.workspace if v.workspace != null && length(v.workspace) > 0 }
}

