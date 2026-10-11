output "token_validation_configs_lookup_max_items" {
  description = "Map of max_items values across all token_validation_configs_lookup, keyed the same as var.token_validation_configs_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_token_validation_configs.token_validation_configs_lookup : k => v.max_items if v.max_items != null }
}
output "token_validation_configs_lookup_result" {
  description = "Map of result values across all token_validation_configs_lookup, keyed the same as var.token_validation_configs_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_token_validation_configs.token_validation_configs_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}
output "token_validation_configs_lookup_zone_id" {
  description = "Map of zone_id values across all token_validation_configs_lookup, keyed the same as var.token_validation_configs_lookup except keys with no zone_id are omitted"
  value       = { for k, v in data.cloudflare_token_validation_configs.token_validation_configs_lookup : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

