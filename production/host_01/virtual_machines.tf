# Domain Controller

resource "hyperv_machine_instance" "dc01" {
  name                   = var.dc01_name
  generation             = var.dc01_generation
  automatic_start_action = var.dc01_automatic_start_action
  automatic_start_delay  = var.dc01_automatic_start_delay
  automatic_stop_action  = var.dc01_automatic_stop_action
  processor_count        = var.dc01_processor_count
  smart_paging_file_path = var.dc01_smart_paging_file_path
  snapshot_file_location = var.dc01_snapshost_file_location
  notes                  = "Environment: ${local.environment}\nCreated by: ${local.createdby}\nPurpose: Domain Controller"
  static_memory          = "true"
  memory_startup_bytes   = var.dc01_memory_startup_bytes
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
    name                              = var.dc01_nic_name
    switch_name                       = var.dc01_nic_switch
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
    maximum_count_per_numa_node                       = "8"
    maximum_count_per_numa_socket                     = "1"
    relative_weight                                   = "100"
    reserve                                           = "0"
  }

  hard_disk_drives {
    controller_type     = "Scsi"
    controller_number   = "0"
    controller_location = "0"
    path                = var.dc01_os_disk_path
  }
}

# K3s Node

resource "hyperv_machine_instance" "k3s_01" {
  name                   = var.k3s_01_name
  generation             = var.k3s_01_generation
  automatic_start_action = var.k3s_01_automatic_start_action
  automatic_start_delay  = var.k3s_01_automatic_start_delay
  automatic_stop_action  = var.k3s_01_automatic_stop_action
  processor_count        = var.k3s_01_processor_count
  smart_paging_file_path = var.k3s_01_smart_paging_file_path
  snapshot_file_location = var.k3s_01_snapshost_file_location
  notes                  = "Environment: ${local.environment}\nCreated by: ${local.createdby}\nPurpose: k3s Node"
  static_memory          = "true"
  memory_startup_bytes   = var.k3s_01_memory_startup_bytes
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
    name                              = var.k3s_01_nic_name
    switch_name                       = var.k3s_01_nic_switch
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
    maximum_count_per_numa_node                       = "8"
    maximum_count_per_numa_socket                     = "1"
    relative_weight                                   = "100"
    reserve                                           = "0"
  }

  hard_disk_drives {
    controller_type     = "Ide"
    controller_number   = "0"
    controller_location = "0"
    path                = var.k3s_01_os_disk_path
  }
}

# Media Server

resource "hyperv_machine_instance" "media" {
  name                   = var.media_name
  generation             = var.media_generation
  automatic_start_action = var.media_automatic_start_action
  automatic_start_delay  = var.media_automatic_start_delay
  automatic_stop_action  = var.media_automatic_stop_action
  processor_count        = var.media_processor_count
  smart_paging_file_path = var.media_smart_paging_file_path
  snapshot_file_location = var.media_snapshost_file_location
  notes                  = "Environment: ${local.environment}\nCreated by: ${local.createdby}\nPurpose: Media Server"
  static_memory          = "true"
  memory_startup_bytes   = var.media_memory_startup_bytes
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
    name                              = var.media_nic_name
    switch_name                       = var.media_nic_switch
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
    maximum_count_per_numa_node                       = "8"
    maximum_count_per_numa_socket                     = "1"
    relative_weight                                   = "100"
    reserve                                           = "0"
  }

  hard_disk_drives {
    controller_type     = "Ide"
    controller_number   = "0"
    controller_location = "0"
    path                = var.media_os_disk_path
  }

  hard_disk_drives {
    controller_type     = "Ide"
    controller_number   = "0"
    controller_location = "1"
    path                = var.media_data_disk_path
  }
}

# Old Veeam Server

resource "hyperv_machine_instance" "vbr" {
  name                   = var.vbr_name
  generation             = var.vbr_generation
  automatic_start_action = var.vbr_automatic_start_action
  automatic_start_delay  = var.vbr_automatic_start_delay
  automatic_stop_action  = var.vbr_automatic_stop_action
  processor_count        = var.vbr_processor_count
  smart_paging_file_path = var.vbr_smart_paging_file_path
  snapshot_file_location = var.vbr_snapshost_file_location
  notes                  = "Environment: ${local.environment}\nCreated by: ${local.createdby}\nPurpose: vbr Server"
  static_memory          = "true"
  memory_startup_bytes   = var.vbr_memory_startup_bytes
  state                  = "Off"

  integration_services = {
    "Guest Service Interface" = true
    "Heartbeat"               = true
    "Key-Value Pair Exchange" = true
    "Shutdown"                = true
    "Time Synchronization"    = true
    "VSS"                     = true
  }

  network_adaptors {
    name                              = var.vbr_nic_name
    switch_name                       = var.vbr_nic_switch
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
      boot_type           = "NetworkAdapter"
      controller_number   = "-1"
      controller_location = "-1"
    }
    boot_order {
      boot_type           = "HardDiskDrive"
      controller_number   = "0"
      controller_location = "0"
      path                = var.vbr_os_disk_path
    }
  }

  vm_processor {
    compatibility_for_migration_enabled               = "false"
    compatibility_for_older_operating_systems_enabled = "false"
    enable_host_resource_protection                   = "false"
    expose_virtualization_extensions                  = "false"
    hw_thread_count_per_core                          = "0"
    maximum                                           = "100"
    maximum_count_per_numa_node                       = "8"
    maximum_count_per_numa_socket                     = "1"
    relative_weight                                   = "100"
    reserve                                           = "0"
  }

  hard_disk_drives {
    controller_type     = "Scsi"
    controller_number   = "0"
    controller_location = "0"
    path                = var.vbr_os_disk_path
  }
}

# Veeam Server

resource "hyperv_vhd" "veeam_server_vhd" {
  path = var.veeam_server_vhd_path
  size = var.veeam_server_vhd_size
}

resource "hyperv_machine_instance" "veeam" {
  depends_on             = [hyperv_vhd.veeam_server_vhd]
  name                   = var.veeam_name
  generation             = var.veeam_generation
  automatic_start_action = var.veeam_automatic_start_action
  automatic_start_delay  = var.veeam_automatic_start_delay
  automatic_stop_action  = var.veeam_automatic_stop_action
  processor_count        = var.veeam_processor_count
  smart_paging_file_path = var.veeam_smart_paging_file_path
  snapshot_file_location = var.veeam_snapshost_file_location
  notes                  = "Environment: ${local.environment}\nCreated by: ${local.createdby}\nPurpose: Veeam Server"
  static_memory          = "true"
  memory_startup_bytes   = var.veeam_memory_startup_bytes
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
    name                              = var.veeam_nic_name
    switch_name                       = var.veeam_nic_switch
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
    maximum_count_per_numa_node                       = "8"
    maximum_count_per_numa_socket                     = "1"
    relative_weight                                   = "100"
    reserve                                           = "0"
  }

  hard_disk_drives {
    controller_type     = "Scsi"
    controller_number   = "0"
    controller_location = "0"
    path                = var.veeam_server_vhd_path
  }

  hard_disk_drives {
    controller_type     = "Scsi"
    controller_number   = "0"
    controller_location = "1"
    disk_number         = "3"
    path                = var.veeam_data_disk_01_path
  }

  hard_disk_drives {
    controller_type     = "Scsi"
    controller_number   = "0"
    controller_location = "2"
    disk_number         = "4"
    path                = var.veeam_data_disk_02_path
  }
}
