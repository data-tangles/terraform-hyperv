terraform {
  required_providers {
    hyperv = {
      source  = "qman-being/hyperv"
      version = "1.0.2"
    }
  }
  backend "remote" {}
}

provider "hyperv" {
  user            = var.hyperv_user
  password        = var.hyperv_password
  host            = var.hyperv_host
  port            = var.hyperv_port
  https           = var.hyperv_https
  insecure        = var.hyperv_insecure
  use_ntlm        = var.hyperv_use_ntlm
  tls_server_name = var.hyperv_tls_server_name
  cacert_path     = var.hyperv_cacert_path
  cert_path       = var.hyperv_cert_path
  key_path        = var.hyperv_key_path
  script_path     = var.hyperv_script_path
  timeout         = var.hyperv_timeout
}

terraform {
  required_version = ">= 1.5"
}
