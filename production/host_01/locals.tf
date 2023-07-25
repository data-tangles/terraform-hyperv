locals {
  environment = var.note_environment
  createdby   = "Terraform"
  modifiedon  = formatdate("DD-MM-YYYY hh:mm ZZZ", timestamp())
}
