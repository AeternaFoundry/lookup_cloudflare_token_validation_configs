data "cloudflare_token_validation_configs" "token_validation_configs_lookup" {
  for_each = var.token_validation_configs_lookup

  max_items = each.value.max_items
  zone_id   = each.value.zone_id
}

