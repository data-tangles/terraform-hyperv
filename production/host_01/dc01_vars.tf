variable "dc01_name" {
  type        = string
  description = "The name of the virtual machine"
}

variable "dc01_generation" {
  type        = number
  description = "Specifies the generation, as an integer, for the virtual machine"
}

variable "dc01_memory_startup_bytes" {
  type        = number
  description = "Specifies the amount of memory that the virtual machine is to be allocated upon startup"
}

variable "dc01_nic_name" {
  type        = string
  description = "Specifies the name for the virtual network adapter"
}

variable "dc01_nic_switch" {
  type        = string
  description = "Specifies the name of the virtual switch to connect to the new network adapterlue"
}

variable "dc01_os_disk_path" {
  type        = string
  description = "Specifies the full path of the hard disk drive file to be added"
}
