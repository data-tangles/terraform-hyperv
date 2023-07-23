# Production vSwitch

resource "hyperv_network_switch" "production_vswitch" {
  name                = var.production_vswitch_name
  notes               = "Environment: ${local.environment}\nCreated by: ${local.createdby}\nCreated on: ${local.createdon}\nModified on: ${local.modifiedon}\nPurpose: Production vSwitch"
  allow_management_os = var.production_vswitch_allow_management_os
  switch_type         = var.production_vswitch_switch_type
}
