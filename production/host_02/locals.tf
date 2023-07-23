locals {
  environment = var.note_environment
  createdby   = "Terraform"
  createdon   = formatdate("DD-MM-YYYY hh:mm ZZZ", timestamp())
  modifiedon  = formatdate("DD-MM-YYYY hh:mm ZZZ", timestamp())
}
