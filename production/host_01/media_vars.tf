variable "media_name" {
  type        = string
  description = "The name of the virtual machine"
}

variable "media_generation" {
  type        = number
  description = "Specifies the generation, as an integer, for the virtual machine"
}

variable "media_automatic_start_action" {
  type        = string
  description = "Specifies the action the virtual machine is to take upon start"
}

variable "media_automatic_start_delay" {
  type        = number
  description = "Specifies the number of seconds by which the virtual machine's start should be delayed"
}

variable "media_automatic_stop_action" {
  type        = string
  description = "Specifies the action the virtual machine is to take when the virtual machine host shuts down"
}

variable "media_processor_count" {
  type        = number
  description = "Specifies the number of virtual processors for the virtual machine"
}

variable "media_smart_paging_file_path" {
  type        = string
  description = "Specifies the folder in which the Smart Paging file is to be stored"
}

variable "media_snapshost_file_location" {
  type        = string
  description = "Specifies the folder in which the virtual machine is to store its snapshot files"
}

variable "media_memory_startup_bytes" {
  type        = number
  description = "Specifies the amount of memory that the virtual machine is to be allocated upon startup"
}

variable "media_nic_name" {
  type        = string
  description = "Specifies the name for the virtual network adapter"
}

variable "media_nic_switch" {
  type        = string
  description = "Specifies the name of the virtual switch to connect to the new network adapterlue"
}

variable "media_os_disk_path" {
  type        = string
  description = "Specifies the full path of the hard disk drive file to be added"
}

variable "media_data_disk_path" {
  type        = string
  description = "Specifies the full path of the hard disk drive file to be added"
}
