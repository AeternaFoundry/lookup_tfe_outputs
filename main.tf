data "tfe_outputs" "outputs_lookup" {
  for_each = var.outputs_lookup

  workspace    = each.value.workspace
  organization = each.value.organization
}

