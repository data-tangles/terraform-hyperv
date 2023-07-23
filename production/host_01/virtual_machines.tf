# Domain Controller

resource "hyperv_machine_instance" "dc01" {
  name                 = var.dc01_name
  generation           = var.dc01_generation
  notes                = "Environment: ${local.environment}\nCreated by: ${local.createdby}\nCreated on: ${local.createdon}\nModified on: ${local.modifiedon}\nPurpose: Domain Controller"
  static_memory        = "true"
  memory_startup_bytes = var.dc01_memory_startup_bytes
  state                = "Running"

  integration_services = {
    "Guest Service Interface" = true
    "Heartbeat"               = true
    "Key-Value Pair Exchange" = true
    "Shutdown"                = true
    "Time Synchronization"    = false
    "VSS"                     = true
  }

  vm_firmware {
    enable_secure_boot   = "On"
    secure_boot_template = "MicrosoftWindows"
    boot_order {
      boot_type           = "HardDiskDrive"
      controller_number   = "0"
      controller_location = "0"
    }
  }

  network_adaptors {
    name        = var.dc01_nic_name
    switch_name = var.dc01_nic_switch
  }

  hard_disk_drives {
    controller_type     = "Scsi"
    controller_number   = "0"
    controller_location = "0"
    path                = var.dc01_os_disk_path
  }
}

# K3s Node
/*
resource "hyperv_machine_instance" "k3s" {
  name                 = var.k3s_name
  generation           = var.k3s_generation
  notes                = "Environment: ${local.environment}\nCreated by: ${local.createdby}\nCreated on: ${local.createdon}\nModified on: ${local.modifiedon}\nPurpose: k3s Node"
  static_memory        = "true"
  memory_startup_bytes = var.k3s_memory_startup_bytes
  state                = "Running"

  integration_services = {
    "Guest Service Interface" = true
    "Heartbeat"               = true
    "Key-Value Pair Exchange" = true
    "Shutdown"                = true
    "Time Synchronization"    = false
    "VSS"                     = true
  }

  vm_firmware {
    enable_secure_boot   = "On"
    secure_boot_template = "MicrosoftWindows"
    boot_order {
      boot_type           = "HardDiskDrive"
      controller_number   = "0"
      controller_location = "0"
    }
  }

  network_adaptors {
    name        = var.k3s_nic_name
    switch_name = var.k3s_nic_switch
  }

  hard_disk_drives {
    controller_type     = "Scsi"
    controller_number   = "0"
    controller_location = "0"
    path                = var.k3s_os_disk_path
  }
}
*/
