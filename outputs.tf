output "catapp_url" {
  value = "http://${module.aws_record_hashicat.record_fqdn}"
} 