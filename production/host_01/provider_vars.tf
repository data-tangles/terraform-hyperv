variable "hyperv_user" {
  type        = string
  description = "The username to use when HyperV api calls are made"
}

variable "hyperv_password" {
  type        = string
  description = "The password associated with the username to use for HyperV api calls"
}

variable "hyperv_host" {
  type        = string
  description = "The host to run HyperV api calls against"
}

variable "hyperv_port" {
  type        = number
  description = "The port to run HyperV api calls against"
  default     = 5986
}

variable "hyperv_https" {
  type        = bool
  description = "Should HTTPS be used for HyperV api calls"
  default     = true
}

variable "hyperv_insecure" {
  type        = bool
  description = "Skips TLS Verification for HyperV api calls"
  default     = false
}

variable "kerberos_config" {
  type        = string
  description = "Path to kerberos config file"
  default     = false
}

variable "kerberos_realm" {
  type        = string
  description = "Kerberos Realm used for authentication"
  default     = false
}

variable "hyperv_use_ntlm" {
  type        = bool
  description = "Use NTLM for authentication for HyperV api calls"
  default     = true
}

variable "hyperv_tls_server_name" {
  type        = string
  description = "The TLS server name for the host used for HyperV api calls"
}

variable "hyperv_cacert_path" {
  type        = string
  description = "The path to the ca certificates to use for HyperV api calls"
}

variable "hyperv_cert_path" {
  type        = string
  description = "The path to the certificate to use for authentication for HyperV api calls"
}

variable "hyperv_key_path" {
  type        = string
  description = "The path to the certificate private key to use for authentication for HyperV api calls"
}

variable "hyperv_script_path" {
  type        = string
  description = "The path used to copy scripts meant for remote execution for HyperV api calls"
}

variable "hyperv_timeout" {
  type        = string
  description = "The timeout to wait for the connection to become available for HyperV api calls"
}
