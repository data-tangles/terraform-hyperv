# Production vSwitch

resource "hyperv_network_switch" "host_01_production_vswitch" {
  name                                    = var.host_01_production_vswitch_name
  notes                                   = "Environment: ${local.environment}\nCreated by: ${local.createdby}\nCreated on: ${local.createdon}\nModified on: ${local.modifiedon}\nPurpose: Production vSwitch"
  allow_management_os                     = var.host_01_production_vswitch_allow_management_os
  switch_type                             = var.host_01_production_vswitch_switch_type
  default_flow_minimum_bandwidth_absolute = "100000000"
  default_queue_vmmq_enabled              = "true"
  default_queue_vrss_enabled              = "true"
  minimum_bandwidth_mode                  = "Absolute"
  net_adapter_names                       = ["Ethernet"]
}
