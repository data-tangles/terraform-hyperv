# Production

variable "host_01_production_vswitch_name" {
  type        = string
  description = "Specifies the name of the switch to be created"
}

variable "host_01_production_vswitch_allow_management_os" {
  type        = bool
  description = "Specifies if the HyperV host machine will have access to network switch when created"
}

variable "host_01_production_vswitch_switch_type" {
  type        = string
  description = "Specifies the type of the switch to be created"
}
