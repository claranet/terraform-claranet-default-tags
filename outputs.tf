output "default_tags" {
  value       = local.compacted_tags
  description = "Generated default tags."
}

output "default_tags_list" {
  value       = local.compacted_tags_list
  description = "Generated default tags as a list of `key=value` strings."
}

output "extra_tags" {
  value       = local.compacted_extra_tags
  description = "Extra tags (not in default tags)."
}
