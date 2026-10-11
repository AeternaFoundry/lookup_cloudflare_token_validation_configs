variable "token_validation_configs_lookup" {
  description = <<EOT
Map of token_validation_configs_lookup, attributes below
Optional:
    - max_items
    - zone_id
EOT

  type = map(object({
    max_items = optional(number)
    zone_id   = optional(string)
  }))
}

