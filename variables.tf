variable "outputs_lookup" {
  description = <<EOT
Map of outputs_lookup, attributes below
Required:
    - workspace
Optional:
    - organization
EOT

  type = map(object({
    workspace    = string
    organization = optional(string)
  }))
}

