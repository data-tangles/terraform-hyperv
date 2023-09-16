variable "veeam_server_vhd_path" {
  type        = string
  description = "Path to the new virtual hard disk file(s) that is being created or being copied to"
}

/*
variable "veeam_server_vhd_source" {
  type        = string
  description = "Path to the source virtual hard disk file(s) that is being used as a source"
}



variable "veeam_server_vhd_size" {
  type        = number
  description = "The maximum size, in bytes, of the virtual hard disk to be created"
}
*/


variable "veeam_name" {
  type        = string
  description = "The name of the virtual machine"
}

variable "veeam_generation" {
  type        = number
  description = "Specifies the generation, as an integer, for the virtual machine"
}

variable "veeam_automatic_start_action" {
  type        = string
  description = "Specifies the action the virtual machine is to take upon start"
}

variable "veeam_automatic_start_delay" {
  type        = number
  description = "Specifies the number of seconds by which the virtual machine's start should be delayed"
}

variable "veeam_automatic_stop_action" {
  type        = string
  description = "Specifies the action the virtual machine is to take when the virtual machine host shuts down"
}

variable "veeam_processor_count" {
  type        = number
  description = "Specifies the number of virtual processors for the virtual machine"
}

variable "veeam_smart_paging_file_path" {
  type        = string
  description = "Specifies the folder in which the Smart Paging file is to be stored"
}

variable "veeam_snapshost_file_location" {
  type        = string
  description = "Specifies the folder in which the virtual machine is to store its snapshot files"
}

variable "veeam_memory_startup_bytes" {
  type        = number
  description = "Specifies the amount of memory that the virtual machine is to be allocated upon startup"
}

variable "veeam_nic_name" {
  type        = string
  description = "Specifies the name for the virtual network adapter"
}

variable "veeam_nic_switch" {
  type        = string
  description = "Specifies the name of the virtual switch to connect to the new network adapterlue"
}

variable "veeam_data_disk_01_path" {
  type        = string
  description = "Specifies the full path of the hard disk drive file to be added"
}

variable "veeam_data_disk_02_path" {
  type        = string
  description = "Specifies the full path of the hard disk drive file to be added"
}
