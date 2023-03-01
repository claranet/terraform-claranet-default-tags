output "default_tags" {
  value       = var.compact_outputed_tags ? local.compacted_tags : local.generated_tags
  description = "Generated default tags."
}
