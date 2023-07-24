# Production vSwitch

resource "hyperv_network_switch" "host_02_production_vswitch" {
  name                = var.host_02_production_vswitch_name
  notes               = "Environment: ${local.environment}\nCreated by: ${local.createdby}\nCreated on: ${local.createdon}\nModified on: ${local.modifiedon}\nPurpose: Production vSwitch"
  allow_management_os = var.host_02_production_vswitch_allow_management_os
  switch_type         = var.host_02_production_vswitch_switch_type
}
