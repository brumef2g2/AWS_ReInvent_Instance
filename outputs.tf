output "catapp_url" {
  value = "http://${join(",",module.aws_record_hashicat.record_fqdn)}"
} 