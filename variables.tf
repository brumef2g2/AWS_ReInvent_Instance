####### variables for Instance #######

variable "prefix" {
  description = "Name to be used on all the resources as identifier"
  type        = "string"
  default     = ""
}

variable "vm_count" {
  description = "Should be true if you wanted to deploy internet gateway"
  type        = "string"
  default     = "1"
}