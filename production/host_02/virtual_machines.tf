# Domain Controller

resource "hyperv_machine_instance" "dc02" {
  name                   = var.dc02_name
  generation             = var.dc02_generation
  automatic_start_action = var.dc02_automatic_start_action
  automatic_start_delay  = var.dc02_automatic_start_delay
  automatic_stop_action  = var.dc02_automatic_stop_action
  processor_count        = var.dc02_processor_count
  smart_paging_file_path = var.dc02_smart_paging_file_path
  snapshot_file_location = var.dc02_snapshost_file_location
  notes                  = "Environment: ${local.environment}\nCreated by: ${local.createdby}\nPurpose: Domain Controller"
  static_memory          = "true"
  memory_startup_bytes   = var.dc02_memory_startup_bytes
  state                  = "Running"

  integration_services = {
    "Guest Service Interface" = true
    "Heartbeat"               = true
    "Key-Value Pair Exchange" = true
    "Shutdown"                = true
    "Time Synchronization"    = false
    "VSS"                     = true
  }

  network_adaptors {
    name                              = var.dc02_nic_name
    switch_name                       = var.dc02_nic_switch
    allow_teaming                     = "Off"
    iov_interrupt_moderation          = "Default"
    iov_weight                        = "0"
    packet_direct_moderation_count    = "64"
    packet_direct_moderation_interval = "1000000"
    vmmq_enabled                      = "true"
    wait_for_ips                      = "false"
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

  vm_processor {
    compatibility_for_migration_enabled               = "false"
    compatibility_for_older_operating_systems_enabled = "false"
    enable_host_resource_protection                   = "false"
    expose_virtualization_extensions                  = "false"
    hw_thread_count_per_core                          = "0"
    maximum                                           = "100"
    maximum_count_per_numa_node                       = "4"
    maximum_count_per_numa_socket                     = "1"
    relative_weight                                   = "100"
    reserve                                           = "0"
  }

  hard_disk_drives {
    controller_type     = "Scsi"
    controller_number   = "0"
    controller_location = "0"
    path                = var.dc02_os_disk_path
  }
}

# K3s Node

resource "hyperv_machine_instance" "k3s_02" {
  name                   = var.k3s_02_name
  generation             = var.k3s_02_generation
  automatic_start_action = var.k3s_02_automatic_start_action
  automatic_start_delay  = var.k3s_02_automatic_start_delay
  automatic_stop_action  = var.k3s_02_automatic_stop_action
  processor_count        = var.k3s_02_processor_count
  smart_paging_file_path = var.k3s_02_smart_paging_file_path
  snapshot_file_location = var.k3s_02_snapshost_file_location
  notes                  = "Environment: ${local.environment}\nCreated by: ${local.createdby}\nPurpose: k3s Node"
  static_memory          = "true"
  memory_startup_bytes   = var.k3s_02_memory_startup_bytes
  state                  = "Running"

  integration_services = {
    "Guest Service Interface" = true
    "Heartbeat"               = true
    "Key-Value Pair Exchange" = true
    "Shutdown"                = true
    "Time Synchronization"    = true
    "VSS"                     = true
  }

  network_adaptors {
    name                              = var.k3s_02_nic_name
    switch_name                       = var.k3s_02_nic_switch
    allow_teaming                     = "Off"
    iov_interrupt_moderation          = "Default"
    iov_weight                        = "0"
    packet_direct_moderation_count    = "64"
    packet_direct_moderation_interval = "1000000"
    vmmq_enabled                      = "true"
    wait_for_ips                      = "false"
  }

  vm_processor {
    compatibility_for_migration_enabled               = "false"
    compatibility_for_older_operating_systems_enabled = "false"
    enable_host_resource_protection                   = "false"
    expose_virtualization_extensions                  = "false"
    hw_thread_count_per_core                          = "0"
    maximum                                           = "100"
    maximum_count_per_numa_node                       = "4"
    maximum_count_per_numa_socket                     = "1"
    relative_weight                                   = "100"
    reserve                                           = "0"
  }

  hard_disk_drives {
    controller_type     = "Ide"
    controller_number   = "0"
    controller_location = "0"
    path                = var.k3s_02_os_disk_path
  }
}

# Certificate Authority

resource "hyperv_machine_instance" "ca" {
  name                   = var.ca_name
  generation             = var.ca_generation
  automatic_start_action = var.ca_automatic_start_action
  automatic_start_delay  = var.ca_automatic_start_delay
  automatic_stop_action  = var.ca_automatic_stop_action
  processor_count        = var.ca_processor_count
  smart_paging_file_path = var.ca_smart_paging_file_path
  snapshot_file_location = var.ca_snapshost_file_location
  notes                  = "Environment: ${local.environment}\nCreated by: ${local.createdby}\nPurpose: Certificate Authority"
  static_memory          = "true"
  memory_startup_bytes   = var.ca_memory_startup_bytes
  state                  = "Running"

  integration_services = {
    "Guest Service Interface" = true
    "Heartbeat"               = true
    "Key-Value Pair Exchange" = true
    "Shutdown"                = true
    "Time Synchronization"    = false
    "VSS"                     = true
  }

  network_adaptors {
    name                              = var.ca_nic_name
    switch_name                       = var.ca_nic_switch
    allow_teaming                     = "Off"
    iov_interrupt_moderation          = "Default"
    iov_weight                        = "0"
    packet_direct_moderation_count    = "64"
    packet_direct_moderation_interval = "1000000"
    vmmq_enabled                      = "true"
    wait_for_ips                      = "false"
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

  vm_processor {
    compatibility_for_migration_enabled               = "false"
    compatibility_for_older_operating_systems_enabled = "false"
    enable_host_resource_protection                   = "false"
    expose_virtualization_extensions                  = "false"
    hw_thread_count_per_core                          = "0"
    maximum                                           = "100"
    maximum_count_per_numa_node                       = "4"
    maximum_count_per_numa_socket                     = "1"
    relative_weight                                   = "100"
    reserve                                           = "0"
  }

  hard_disk_drives {
    controller_type     = "Scsi"
    controller_number   = "0"
    controller_location = "0"
    path                = var.ca_os_disk_path
  }
}

# Ansible Host

resource "hyperv_machine_instance" "ansible" {
  name                   = var.ansible_name
  generation             = var.ansible_generation
  automatic_start_action = var.ansible_automatic_start_action
  automatic_start_delay  = var.ansible_automatic_start_delay
  automatic_stop_action  = var.ansible_automatic_stop_action
  processor_count        = var.ansible_processor_count
  smart_paging_file_path = var.ansible_smart_paging_file_path
  snapshot_file_location = var.ansible_snapshost_file_location
  notes                  = "Environment: ${local.environment}\nCreated by: ${local.createdby}\nPurpose: Ansible Host"
  static_memory          = "true"
  memory_startup_bytes   = var.ansible_memory_startup_bytes
  state                  = "Running"

  integration_services = {
    "Guest Service Interface" = true
    "Heartbeat"               = true
    "Key-Value Pair Exchange" = true
    "Shutdown"                = true
    "Time Synchronization"    = true
    "VSS"                     = true
  }

  network_adaptors {
    name                              = var.ansible_nic_name
    switch_name                       = var.ansible_nic_switch
    allow_teaming                     = "Off"
    iov_interrupt_moderation          = "Default"
    iov_weight                        = "0"
    packet_direct_moderation_count    = "64"
    packet_direct_moderation_interval = "1000000"
    vmmq_enabled                      = "true"
    wait_for_ips                      = "false"
  }

  vm_processor {
    compatibility_for_migration_enabled               = "false"
    compatibility_for_older_operating_systems_enabled = "false"
    enable_host_resource_protection                   = "false"
    expose_virtualization_extensions                  = "false"
    hw_thread_count_per_core                          = "0"
    maximum                                           = "100"
    maximum_count_per_numa_node                       = "4"
    maximum_count_per_numa_socket                     = "1"
    relative_weight                                   = "100"
    reserve                                           = "0"
  }

  hard_disk_drives {
    controller_type     = "Ide"
    controller_number   = "0"
    controller_location = "0"
    path                = var.ansible_os_disk_path
  }
}
