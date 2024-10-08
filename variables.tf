variable "tenancy_ocid" {
  description = "Your OCI tenancy OCID"
  type        = string
}

variable "user_ocid" {
  description = "Your OCI user OCID"
  type        = string
}

variable "rsa_private_key_path" {
  description = "Path to your RSA private key"
  type        = string
}

variable "fingerprint" {
  description = "Your OCI fingerprint"
  type        = string
}

variable "region_identifier" {
  description = "Your OCI Region ID"
  type        = string
}

variable "compute_shape" {
  description = "Compute Shape"
  type        = string
  default     = "VM.Standard.A1.Flex"
}
variable "instance_source_details_boot_volume_size_in_gbs" {
  description = "Compute instance boot volume size in GBs"
  type        = string
  default     = "80"
}

variable "memory_in_gbs" {
  description = "Compute instance memory size in GBs"
  type        = string
  default     = "12"
}

variable "ocpus" {
  description = "Compute instance processing unit count"
  type        = string
  default     = "2"
}

variable "image_id" {
  description = "Ubuntu 20.04 image ID found at https://docs.oracle.com/en-us/iaas/images/image/8f5ff1da-b266-4219-bc14-3e5520a802a7/"
  type        = string
  default     = "ocid1.image.oc1.eu-madrid-1.aaaaaaaazpqusylr7345dh5kpj2rmzkl2wiibj3oi4bnrarfxgytmzn7qm6a"
}

variable "ssh_public_key_path" {
  description = "Path to SSH public key that you will use to connect to your instance"
  type        = string
}

variable "budget_amount" {
  description = "Target budget for account"
  type        = string
  default     = "1"
}

variable "alert_rule_recipients" {
  description = "Email address to be notified if budget is exceeded"
  type        = string
}

variable "ingress_ports" {
  description = "List of ports to allow through the security group"
  type        = list(number)
  default     = [22, 80, 443, 30000]
}