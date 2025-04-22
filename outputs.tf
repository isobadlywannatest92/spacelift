output "debug_tags" {
  value = {
    Environment = var.environment
    Owner       = var.owner
    Project     = "spacelift-demo"
  }
}
