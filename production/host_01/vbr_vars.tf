variable "vbr_name" {
  type        = string
  description = "The name of the virtual machine"
}

variable "vbr_generation" {
  type        = number
  description = "Specifies the generation, as an integer, for the virtual machine"
}

variable "vbr_automatic_start_action" {
  type        = string
  description = "Specifies the action the virtual machine is to take upon start"
}

variable "vbr_automatic_start_delay" {
  type        = number
  description = "Specifies the number of seconds by which the virtual machine's start should be delayed"
}

variable "vbr_automatic_stop_action" {
  type        = string
  description = "Specifies the action the virtual machine is to take when the virtual machine host shuts down"
}

variable "vbr_processor_count" {
  type        = number
  description = "Specifies the number of virtual processors for the virtual machine"
}

variable "vbr_smart_paging_file_path" {
  type        = string
  description = "Specifies the folder in which the Smart Paging file is to be stored"
}

variable "vbr_snapshost_file_location" {
  type        = string
  description = "Specifies the folder in which the virtual machine is to store its snapshot files"
}

variable "vbr_memory_startup_bytes" {
  type        = number
  description = "Specifies the amount of memory that the virtual machine is to be allocated upon startup"
}

variable "vbr_nic_name" {
  type        = string
  description = "Specifies the name for the virtual network adapter"
}

variable "vbr_nic_switch" {
  type        = string
  description = "Specifies the name of the virtual switch to connect to the new network adapterlue"
}

variable "vbr_os_disk_path" {
  type        = string
  description = "Specifies the full path of the hard disk drive file to be added"
}
/*/
variable "vbr_data_disk_01_path" {
  type        = string
  description = "Specifies the full path of the hard disk drive file to be added"
}

variable "vbr_data_disk_02_path" {
  type        = string
  description = "Specifies the full path of the hard disk drive file to be added"
}
/*/
