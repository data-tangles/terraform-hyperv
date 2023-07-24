# host_02

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_hyperv"></a> [hyperv](#requirement\_hyperv) | 1.0.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hyperv"></a> [hyperv](#provider\_hyperv) | 1.0.4 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hyperv_machine_instance.ansible](https://registry.terraform.io/providers/taliesins/hyperv/1.0.4/docs/resources/machine_instance) | resource |
| [hyperv_machine_instance.ca](https://registry.terraform.io/providers/taliesins/hyperv/1.0.4/docs/resources/machine_instance) | resource |
| [hyperv_machine_instance.dc02](https://registry.terraform.io/providers/taliesins/hyperv/1.0.4/docs/resources/machine_instance) | resource |
| [hyperv_machine_instance.k3s_02](https://registry.terraform.io/providers/taliesins/hyperv/1.0.4/docs/resources/machine_instance) | resource |
| [hyperv_network_switch.host_02_production_vswitch](https://registry.terraform.io/providers/taliesins/hyperv/1.0.4/docs/resources/network_switch) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ansible_automatic_start_action"></a> [ansible\_automatic\_start\_action](#input\_ansible\_automatic\_start\_action) | Specifies the action the virtual machine is to take upon start | `string` | n/a | yes |
| <a name="input_ansible_automatic_start_delay"></a> [ansible\_automatic\_start\_delay](#input\_ansible\_automatic\_start\_delay) | Specifies the number of seconds by which the virtual machine's start should be delayed | `number` | n/a | yes |
| <a name="input_ansible_automatic_stop_action"></a> [ansible\_automatic\_stop\_action](#input\_ansible\_automatic\_stop\_action) | Specifies the action the virtual machine is to take when the virtual machine host shuts down | `string` | n/a | yes |
| <a name="input_ansible_generation"></a> [ansible\_generation](#input\_ansible\_generation) | Specifies the generation, as an integer, for the virtual machine | `number` | n/a | yes |
| <a name="input_ansible_memory_startup_bytes"></a> [ansible\_memory\_startup\_bytes](#input\_ansible\_memory\_startup\_bytes) | Specifies the amount of memory that the virtual machine is to be allocated upon startup | `number` | n/a | yes |
| <a name="input_ansible_name"></a> [ansible\_name](#input\_ansible\_name) | The name of the virtual machine | `string` | n/a | yes |
| <a name="input_ansible_nic_name"></a> [ansible\_nic\_name](#input\_ansible\_nic\_name) | Specifies the name for the virtual network adapter | `string` | n/a | yes |
| <a name="input_ansible_nic_switch"></a> [ansible\_nic\_switch](#input\_ansible\_nic\_switch) | Specifies the name of the virtual switch to connect to the new network adapterlue | `string` | n/a | yes |
| <a name="input_ansible_os_disk_path"></a> [ansible\_os\_disk\_path](#input\_ansible\_os\_disk\_path) | Specifies the full path of the hard disk drive file to be added | `string` | n/a | yes |
| <a name="input_ansible_processor_count"></a> [ansible\_processor\_count](#input\_ansible\_processor\_count) | Specifies the number of virtual processors for the virtual machine | `number` | n/a | yes |
| <a name="input_ansible_smart_paging_file_path"></a> [ansible\_smart\_paging\_file\_path](#input\_ansible\_smart\_paging\_file\_path) | Specifies the folder in which the Smart Paging file is to be stored | `string` | n/a | yes |
| <a name="input_ansible_snapshost_file_location"></a> [ansible\_snapshost\_file\_location](#input\_ansible\_snapshost\_file\_location) | Specifies the folder in which the virtual machine is to store its snapshot files | `string` | n/a | yes |
| <a name="input_ca_automatic_start_action"></a> [ca\_automatic\_start\_action](#input\_ca\_automatic\_start\_action) | Specifies the action the virtual machine is to take upon start | `string` | n/a | yes |
| <a name="input_ca_automatic_start_delay"></a> [ca\_automatic\_start\_delay](#input\_ca\_automatic\_start\_delay) | Specifies the number of seconds by which the virtual machine's start should be delayed | `number` | n/a | yes |
| <a name="input_ca_automatic_stop_action"></a> [ca\_automatic\_stop\_action](#input\_ca\_automatic\_stop\_action) | Specifies the action the virtual machine is to take when the virtual machine host shuts down | `string` | n/a | yes |
| <a name="input_ca_generation"></a> [ca\_generation](#input\_ca\_generation) | Specifies the generation, as an integer, for the virtual machine | `number` | n/a | yes |
| <a name="input_ca_memory_startup_bytes"></a> [ca\_memory\_startup\_bytes](#input\_ca\_memory\_startup\_bytes) | Specifies the amount of memory that the virtual machine is to be allocated upon startup | `number` | n/a | yes |
| <a name="input_ca_name"></a> [ca\_name](#input\_ca\_name) | The name of the virtual machine | `string` | n/a | yes |
| <a name="input_ca_nic_name"></a> [ca\_nic\_name](#input\_ca\_nic\_name) | Specifies the name for the virtual network adapter | `string` | n/a | yes |
| <a name="input_ca_nic_switch"></a> [ca\_nic\_switch](#input\_ca\_nic\_switch) | Specifies the name of the virtual switch to connect to the new network adapterlue | `string` | n/a | yes |
| <a name="input_ca_os_disk_path"></a> [ca\_os\_disk\_path](#input\_ca\_os\_disk\_path) | Specifies the full path of the hard disk drive file to be added | `string` | n/a | yes |
| <a name="input_ca_processor_count"></a> [ca\_processor\_count](#input\_ca\_processor\_count) | Specifies the number of virtual processors for the virtual machine | `number` | n/a | yes |
| <a name="input_ca_smart_paging_file_path"></a> [ca\_smart\_paging\_file\_path](#input\_ca\_smart\_paging\_file\_path) | Specifies the folder in which the Smart Paging file is to be stored | `string` | n/a | yes |
| <a name="input_ca_snapshost_file_location"></a> [ca\_snapshost\_file\_location](#input\_ca\_snapshost\_file\_location) | Specifies the folder in which the virtual machine is to store its snapshot files | `string` | n/a | yes |
| <a name="input_dc02_automatic_start_action"></a> [dc02\_automatic\_start\_action](#input\_dc02\_automatic\_start\_action) | Specifies the action the virtual machine is to take upon start | `string` | n/a | yes |
| <a name="input_dc02_automatic_start_delay"></a> [dc02\_automatic\_start\_delay](#input\_dc02\_automatic\_start\_delay) | Specifies the number of seconds by which the virtual machine's start should be delayed | `number` | n/a | yes |
| <a name="input_dc02_automatic_stop_action"></a> [dc02\_automatic\_stop\_action](#input\_dc02\_automatic\_stop\_action) | Specifies the action the virtual machine is to take when the virtual machine host shuts down | `string` | n/a | yes |
| <a name="input_dc02_generation"></a> [dc02\_generation](#input\_dc02\_generation) | Specifies the generation, as an integer, for the virtual machine | `number` | n/a | yes |
| <a name="input_dc02_memory_startup_bytes"></a> [dc02\_memory\_startup\_bytes](#input\_dc02\_memory\_startup\_bytes) | Specifies the amount of memory that the virtual machine is to be allocated upon startup | `number` | n/a | yes |
| <a name="input_dc02_name"></a> [dc02\_name](#input\_dc02\_name) | The name of the virtual machine | `string` | n/a | yes |
| <a name="input_dc02_nic_name"></a> [dc02\_nic\_name](#input\_dc02\_nic\_name) | Specifies the name for the virtual network adapter | `string` | n/a | yes |
| <a name="input_dc02_nic_switch"></a> [dc02\_nic\_switch](#input\_dc02\_nic\_switch) | Specifies the name of the virtual switch to connect to the new network adapterlue | `string` | n/a | yes |
| <a name="input_dc02_os_disk_path"></a> [dc02\_os\_disk\_path](#input\_dc02\_os\_disk\_path) | Specifies the full path of the hard disk drive file to be added | `string` | n/a | yes |
| <a name="input_dc02_processor_count"></a> [dc02\_processor\_count](#input\_dc02\_processor\_count) | Specifies the number of virtual processors for the virtual machine | `number` | n/a | yes |
| <a name="input_dc02_smart_paging_file_path"></a> [dc02\_smart\_paging\_file\_path](#input\_dc02\_smart\_paging\_file\_path) | Specifies the folder in which the Smart Paging file is to be stored | `string` | n/a | yes |
| <a name="input_dc02_snapshost_file_location"></a> [dc02\_snapshost\_file\_location](#input\_dc02\_snapshost\_file\_location) | Specifies the folder in which the virtual machine is to store its snapshot files | `string` | n/a | yes |
| <a name="input_host_02_production_vswitch_allow_management_os"></a> [host\_02\_production\_vswitch\_allow\_management\_os](#input\_host\_02\_production\_vswitch\_allow\_management\_os) | Specifies if the HyperV host machine will have access to network switch when created | `bool` | n/a | yes |
| <a name="input_host_02_production_vswitch_name"></a> [host\_02\_production\_vswitch\_name](#input\_host\_02\_production\_vswitch\_name) | Specifies the name of the switch to be created | `string` | n/a | yes |
| <a name="input_host_02_production_vswitch_switch_type"></a> [host\_02\_production\_vswitch\_switch\_type](#input\_host\_02\_production\_vswitch\_switch\_type) | Specifies the type of the switch to be created | `string` | n/a | yes |
| <a name="input_hyperv_cacert_path"></a> [hyperv\_cacert\_path](#input\_hyperv\_cacert\_path) | The path to the ca certificates to use for HyperV api calls | `string` | n/a | yes |
| <a name="input_hyperv_cert_path"></a> [hyperv\_cert\_path](#input\_hyperv\_cert\_path) | The path to the certificate to use for authentication for HyperV api calls | `string` | n/a | yes |
| <a name="input_hyperv_host"></a> [hyperv\_host](#input\_hyperv\_host) | The host to run HyperV api calls against | `string` | n/a | yes |
| <a name="input_hyperv_https"></a> [hyperv\_https](#input\_hyperv\_https) | Should HTTPS be used for HyperV api calls | `bool` | `true` | no |
| <a name="input_hyperv_insecure"></a> [hyperv\_insecure](#input\_hyperv\_insecure) | Skips TLS Verification for HyperV api calls | `bool` | `false` | no |
| <a name="input_hyperv_key_path"></a> [hyperv\_key\_path](#input\_hyperv\_key\_path) | The path to the certificate private key to use for authentication for HyperV api calls | `string` | n/a | yes |
| <a name="input_hyperv_password"></a> [hyperv\_password](#input\_hyperv\_password) | The password associated with the username to use for HyperV api calls | `string` | n/a | yes |
| <a name="input_hyperv_port"></a> [hyperv\_port](#input\_hyperv\_port) | The port to run HyperV api calls against | `number` | `5986` | no |
| <a name="input_hyperv_script_path"></a> [hyperv\_script\_path](#input\_hyperv\_script\_path) | The path used to copy scripts meant for remote execution for HyperV api calls | `string` | n/a | yes |
| <a name="input_hyperv_timeout"></a> [hyperv\_timeout](#input\_hyperv\_timeout) | The timeout to wait for the connection to become available for HyperV api calls | `string` | n/a | yes |
| <a name="input_hyperv_tls_server_name"></a> [hyperv\_tls\_server\_name](#input\_hyperv\_tls\_server\_name) | The TLS server name for the host used for HyperV api calls | `string` | n/a | yes |
| <a name="input_hyperv_use_ntlm"></a> [hyperv\_use\_ntlm](#input\_hyperv\_use\_ntlm) | Use NTLM for authentication for HyperV api calls | `bool` | `true` | no |
| <a name="input_hyperv_user"></a> [hyperv\_user](#input\_hyperv\_user) | The username to use when HyperV api calls are made | `string` | n/a | yes |
| <a name="input_k3s_02_automatic_start_action"></a> [k3s\_02\_automatic\_start\_action](#input\_k3s\_02\_automatic\_start\_action) | Specifies the action the virtual machine is to take upon start | `string` | n/a | yes |
| <a name="input_k3s_02_automatic_start_delay"></a> [k3s\_02\_automatic\_start\_delay](#input\_k3s\_02\_automatic\_start\_delay) | Specifies the number of seconds by which the virtual machine's start should be delayed | `number` | n/a | yes |
| <a name="input_k3s_02_automatic_stop_action"></a> [k3s\_02\_automatic\_stop\_action](#input\_k3s\_02\_automatic\_stop\_action) | Specifies the action the virtual machine is to take when the virtual machine host shuts down | `string` | n/a | yes |
| <a name="input_k3s_02_generation"></a> [k3s\_02\_generation](#input\_k3s\_02\_generation) | Specifies the generation, as an integer, for the virtual machine | `number` | n/a | yes |
| <a name="input_k3s_02_memory_startup_bytes"></a> [k3s\_02\_memory\_startup\_bytes](#input\_k3s\_02\_memory\_startup\_bytes) | Specifies the amount of memory that the virtual machine is to be allocated upon startup | `number` | n/a | yes |
| <a name="input_k3s_02_name"></a> [k3s\_02\_name](#input\_k3s\_02\_name) | The name of the virtual machine | `string` | n/a | yes |
| <a name="input_k3s_02_nic_name"></a> [k3s\_02\_nic\_name](#input\_k3s\_02\_nic\_name) | Specifies the name for the virtual network adapter | `string` | n/a | yes |
| <a name="input_k3s_02_nic_switch"></a> [k3s\_02\_nic\_switch](#input\_k3s\_02\_nic\_switch) | Specifies the name of the virtual switch to connect to the new network adapterlue | `string` | n/a | yes |
| <a name="input_k3s_02_os_disk_path"></a> [k3s\_02\_os\_disk\_path](#input\_k3s\_02\_os\_disk\_path) | Specifies the full path of the hard disk drive file to be added | `string` | n/a | yes |
| <a name="input_k3s_02_processor_count"></a> [k3s\_02\_processor\_count](#input\_k3s\_02\_processor\_count) | Specifies the number of virtual processors for the virtual machine | `number` | n/a | yes |
| <a name="input_k3s_02_smart_paging_file_path"></a> [k3s\_02\_smart\_paging\_file\_path](#input\_k3s\_02\_smart\_paging\_file\_path) | Specifies the folder in which the Smart Paging file is to be stored | `string` | n/a | yes |
| <a name="input_k3s_02_snapshost_file_location"></a> [k3s\_02\_snapshost\_file\_location](#input\_k3s\_02\_snapshost\_file\_location) | Specifies the folder in which the virtual machine is to store its snapshot files | `string` | n/a | yes |
| <a name="input_note_environment"></a> [note\_environment](#input\_note\_environment) | Note to indicate Environment | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
