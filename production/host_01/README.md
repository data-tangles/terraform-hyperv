# host_01

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_hyperv"></a> [hyperv](#requirement\_hyperv) | 1.0.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hyperv"></a> [hyperv](#provider\_hyperv) | 1.0.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hyperv_machine_instance.dc01](https://registry.terraform.io/providers/qman-being/hyperv/1.0.2/docs/resources/machine_instance) | resource |
| [hyperv_machine_instance.k3s_01](https://registry.terraform.io/providers/qman-being/hyperv/1.0.2/docs/resources/machine_instance) | resource |
| [hyperv_machine_instance.media](https://registry.terraform.io/providers/qman-being/hyperv/1.0.2/docs/resources/machine_instance) | resource |
| [hyperv_machine_instance.vbr](https://registry.terraform.io/providers/qman-being/hyperv/1.0.2/docs/resources/machine_instance) | resource |
| [hyperv_machine_instance.veeam](https://registry.terraform.io/providers/qman-being/hyperv/1.0.2/docs/resources/machine_instance) | resource |
| [hyperv_network_switch.host_01_production_vswitch](https://registry.terraform.io/providers/qman-being/hyperv/1.0.2/docs/resources/network_switch) | resource |
| [hyperv_vhd.veeam_server_vhd](https://registry.terraform.io/providers/qman-being/hyperv/1.0.2/docs/resources/vhd) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dc01_automatic_start_action"></a> [dc01\_automatic\_start\_action](#input\_dc01\_automatic\_start\_action) | Specifies the action the virtual machine is to take upon start | `string` | n/a | yes |
| <a name="input_dc01_automatic_start_delay"></a> [dc01\_automatic\_start\_delay](#input\_dc01\_automatic\_start\_delay) | Specifies the number of seconds by which the virtual machine's start should be delayed | `number` | n/a | yes |
| <a name="input_dc01_automatic_stop_action"></a> [dc01\_automatic\_stop\_action](#input\_dc01\_automatic\_stop\_action) | Specifies the action the virtual machine is to take when the virtual machine host shuts down | `string` | n/a | yes |
| <a name="input_dc01_generation"></a> [dc01\_generation](#input\_dc01\_generation) | Specifies the generation, as an integer, for the virtual machine | `number` | n/a | yes |
| <a name="input_dc01_memory_startup_bytes"></a> [dc01\_memory\_startup\_bytes](#input\_dc01\_memory\_startup\_bytes) | Specifies the amount of memory that the virtual machine is to be allocated upon startup | `number` | n/a | yes |
| <a name="input_dc01_name"></a> [dc01\_name](#input\_dc01\_name) | The name of the virtual machine | `string` | n/a | yes |
| <a name="input_dc01_nic_name"></a> [dc01\_nic\_name](#input\_dc01\_nic\_name) | Specifies the name for the virtual network adapter | `string` | n/a | yes |
| <a name="input_dc01_nic_switch"></a> [dc01\_nic\_switch](#input\_dc01\_nic\_switch) | Specifies the name of the virtual switch to connect to the new network adapterlue | `string` | n/a | yes |
| <a name="input_dc01_os_disk_path"></a> [dc01\_os\_disk\_path](#input\_dc01\_os\_disk\_path) | Specifies the full path of the hard disk drive file to be added | `string` | n/a | yes |
| <a name="input_dc01_processor_count"></a> [dc01\_processor\_count](#input\_dc01\_processor\_count) | Specifies the number of virtual processors for the virtual machine | `number` | n/a | yes |
| <a name="input_dc01_smart_paging_file_path"></a> [dc01\_smart\_paging\_file\_path](#input\_dc01\_smart\_paging\_file\_path) | Specifies the folder in which the Smart Paging file is to be stored | `string` | n/a | yes |
| <a name="input_dc01_snapshost_file_location"></a> [dc01\_snapshost\_file\_location](#input\_dc01\_snapshost\_file\_location) | Specifies the folder in which the virtual machine is to store its snapshot files | `string` | n/a | yes |
| <a name="input_host_01_production_vswitch_allow_management_os"></a> [host\_01\_production\_vswitch\_allow\_management\_os](#input\_host\_01\_production\_vswitch\_allow\_management\_os) | Specifies if the HyperV host machine will have access to network switch when created | `bool` | n/a | yes |
| <a name="input_host_01_production_vswitch_name"></a> [host\_01\_production\_vswitch\_name](#input\_host\_01\_production\_vswitch\_name) | Specifies the name of the switch to be created | `string` | n/a | yes |
| <a name="input_host_01_production_vswitch_switch_type"></a> [host\_01\_production\_vswitch\_switch\_type](#input\_host\_01\_production\_vswitch\_switch\_type) | Specifies the type of the switch to be created | `string` | n/a | yes |
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
| <a name="input_k3s_01_automatic_start_action"></a> [k3s\_01\_automatic\_start\_action](#input\_k3s\_01\_automatic\_start\_action) | Specifies the action the virtual machine is to take upon start | `string` | n/a | yes |
| <a name="input_k3s_01_automatic_start_delay"></a> [k3s\_01\_automatic\_start\_delay](#input\_k3s\_01\_automatic\_start\_delay) | Specifies the number of seconds by which the virtual machine's start should be delayed | `number` | n/a | yes |
| <a name="input_k3s_01_automatic_stop_action"></a> [k3s\_01\_automatic\_stop\_action](#input\_k3s\_01\_automatic\_stop\_action) | Specifies the action the virtual machine is to take when the virtual machine host shuts down | `string` | n/a | yes |
| <a name="input_k3s_01_generation"></a> [k3s\_01\_generation](#input\_k3s\_01\_generation) | Specifies the generation, as an integer, for the virtual machine | `number` | n/a | yes |
| <a name="input_k3s_01_memory_startup_bytes"></a> [k3s\_01\_memory\_startup\_bytes](#input\_k3s\_01\_memory\_startup\_bytes) | Specifies the amount of memory that the virtual machine is to be allocated upon startup | `number` | n/a | yes |
| <a name="input_k3s_01_name"></a> [k3s\_01\_name](#input\_k3s\_01\_name) | The name of the virtual machine | `string` | n/a | yes |
| <a name="input_k3s_01_nic_name"></a> [k3s\_01\_nic\_name](#input\_k3s\_01\_nic\_name) | Specifies the name for the virtual network adapter | `string` | n/a | yes |
| <a name="input_k3s_01_nic_switch"></a> [k3s\_01\_nic\_switch](#input\_k3s\_01\_nic\_switch) | Specifies the name of the virtual switch to connect to the new network adapterlue | `string` | n/a | yes |
| <a name="input_k3s_01_os_disk_path"></a> [k3s\_01\_os\_disk\_path](#input\_k3s\_01\_os\_disk\_path) | Specifies the full path of the hard disk drive file to be added | `string` | n/a | yes |
| <a name="input_k3s_01_processor_count"></a> [k3s\_01\_processor\_count](#input\_k3s\_01\_processor\_count) | Specifies the number of virtual processors for the virtual machine | `number` | n/a | yes |
| <a name="input_k3s_01_smart_paging_file_path"></a> [k3s\_01\_smart\_paging\_file\_path](#input\_k3s\_01\_smart\_paging\_file\_path) | Specifies the folder in which the Smart Paging file is to be stored | `string` | n/a | yes |
| <a name="input_k3s_01_snapshost_file_location"></a> [k3s\_01\_snapshost\_file\_location](#input\_k3s\_01\_snapshost\_file\_location) | Specifies the folder in which the virtual machine is to store its snapshot files | `string` | n/a | yes |
| <a name="input_kerberos_config"></a> [kerberos\_config](#input\_kerberos\_config) | Path to kerberos config file | `string` | `false` | no |
| <a name="input_kerberos_realm"></a> [kerberos\_realm](#input\_kerberos\_realm) | Kerberos Realm used for authentication | `string` | `false` | no |
| <a name="input_media_automatic_start_action"></a> [media\_automatic\_start\_action](#input\_media\_automatic\_start\_action) | Specifies the action the virtual machine is to take upon start | `string` | n/a | yes |
| <a name="input_media_automatic_start_delay"></a> [media\_automatic\_start\_delay](#input\_media\_automatic\_start\_delay) | Specifies the number of seconds by which the virtual machine's start should be delayed | `number` | n/a | yes |
| <a name="input_media_automatic_stop_action"></a> [media\_automatic\_stop\_action](#input\_media\_automatic\_stop\_action) | Specifies the action the virtual machine is to take when the virtual machine host shuts down | `string` | n/a | yes |
| <a name="input_media_data_disk_path"></a> [media\_data\_disk\_path](#input\_media\_data\_disk\_path) | Specifies the full path of the hard disk drive file to be added | `string` | n/a | yes |
| <a name="input_media_generation"></a> [media\_generation](#input\_media\_generation) | Specifies the generation, as an integer, for the virtual machine | `number` | n/a | yes |
| <a name="input_media_memory_startup_bytes"></a> [media\_memory\_startup\_bytes](#input\_media\_memory\_startup\_bytes) | Specifies the amount of memory that the virtual machine is to be allocated upon startup | `number` | n/a | yes |
| <a name="input_media_name"></a> [media\_name](#input\_media\_name) | The name of the virtual machine | `string` | n/a | yes |
| <a name="input_media_nic_name"></a> [media\_nic\_name](#input\_media\_nic\_name) | Specifies the name for the virtual network adapter | `string` | n/a | yes |
| <a name="input_media_nic_switch"></a> [media\_nic\_switch](#input\_media\_nic\_switch) | Specifies the name of the virtual switch to connect to the new network adapterlue | `string` | n/a | yes |
| <a name="input_media_os_disk_path"></a> [media\_os\_disk\_path](#input\_media\_os\_disk\_path) | Specifies the full path of the hard disk drive file to be added | `string` | n/a | yes |
| <a name="input_media_processor_count"></a> [media\_processor\_count](#input\_media\_processor\_count) | Specifies the number of virtual processors for the virtual machine | `number` | n/a | yes |
| <a name="input_media_smart_paging_file_path"></a> [media\_smart\_paging\_file\_path](#input\_media\_smart\_paging\_file\_path) | Specifies the folder in which the Smart Paging file is to be stored | `string` | n/a | yes |
| <a name="input_media_snapshost_file_location"></a> [media\_snapshost\_file\_location](#input\_media\_snapshost\_file\_location) | Specifies the folder in which the virtual machine is to store its snapshot files | `string` | n/a | yes |
| <a name="input_note_environment"></a> [note\_environment](#input\_note\_environment) | Note to indicate Environment | `string` | n/a | yes |
| <a name="input_vbr_automatic_start_action"></a> [vbr\_automatic\_start\_action](#input\_vbr\_automatic\_start\_action) | Specifies the action the virtual machine is to take upon start | `string` | n/a | yes |
| <a name="input_vbr_automatic_start_delay"></a> [vbr\_automatic\_start\_delay](#input\_vbr\_automatic\_start\_delay) | Specifies the number of seconds by which the virtual machine's start should be delayed | `number` | n/a | yes |
| <a name="input_vbr_automatic_stop_action"></a> [vbr\_automatic\_stop\_action](#input\_vbr\_automatic\_stop\_action) | Specifies the action the virtual machine is to take when the virtual machine host shuts down | `string` | n/a | yes |
| <a name="input_vbr_generation"></a> [vbr\_generation](#input\_vbr\_generation) | Specifies the generation, as an integer, for the virtual machine | `number` | n/a | yes |
| <a name="input_vbr_memory_startup_bytes"></a> [vbr\_memory\_startup\_bytes](#input\_vbr\_memory\_startup\_bytes) | Specifies the amount of memory that the virtual machine is to be allocated upon startup | `number` | n/a | yes |
| <a name="input_vbr_name"></a> [vbr\_name](#input\_vbr\_name) | The name of the virtual machine | `string` | n/a | yes |
| <a name="input_vbr_nic_name"></a> [vbr\_nic\_name](#input\_vbr\_nic\_name) | Specifies the name for the virtual network adapter | `string` | n/a | yes |
| <a name="input_vbr_nic_switch"></a> [vbr\_nic\_switch](#input\_vbr\_nic\_switch) | Specifies the name of the virtual switch to connect to the new network adapterlue | `string` | n/a | yes |
| <a name="input_vbr_os_disk_path"></a> [vbr\_os\_disk\_path](#input\_vbr\_os\_disk\_path) | Specifies the full path of the hard disk drive file to be added | `string` | n/a | yes |
| <a name="input_vbr_processor_count"></a> [vbr\_processor\_count](#input\_vbr\_processor\_count) | Specifies the number of virtual processors for the virtual machine | `number` | n/a | yes |
| <a name="input_vbr_smart_paging_file_path"></a> [vbr\_smart\_paging\_file\_path](#input\_vbr\_smart\_paging\_file\_path) | Specifies the folder in which the Smart Paging file is to be stored | `string` | n/a | yes |
| <a name="input_vbr_snapshost_file_location"></a> [vbr\_snapshost\_file\_location](#input\_vbr\_snapshost\_file\_location) | Specifies the folder in which the virtual machine is to store its snapshot files | `string` | n/a | yes |
| <a name="input_veeam_automatic_start_action"></a> [veeam\_automatic\_start\_action](#input\_veeam\_automatic\_start\_action) | Specifies the action the virtual machine is to take upon start | `string` | n/a | yes |
| <a name="input_veeam_automatic_start_delay"></a> [veeam\_automatic\_start\_delay](#input\_veeam\_automatic\_start\_delay) | Specifies the number of seconds by which the virtual machine's start should be delayed | `number` | n/a | yes |
| <a name="input_veeam_automatic_stop_action"></a> [veeam\_automatic\_stop\_action](#input\_veeam\_automatic\_stop\_action) | Specifies the action the virtual machine is to take when the virtual machine host shuts down | `string` | n/a | yes |
| <a name="input_veeam_data_disk_01_path"></a> [veeam\_data\_disk\_01\_path](#input\_veeam\_data\_disk\_01\_path) | Specifies the full path of the hard disk drive file to be added | `string` | n/a | yes |
| <a name="input_veeam_data_disk_02_path"></a> [veeam\_data\_disk\_02\_path](#input\_veeam\_data\_disk\_02\_path) | Specifies the full path of the hard disk drive file to be added | `string` | n/a | yes |
| <a name="input_veeam_generation"></a> [veeam\_generation](#input\_veeam\_generation) | Specifies the generation, as an integer, for the virtual machine | `number` | n/a | yes |
| <a name="input_veeam_memory_startup_bytes"></a> [veeam\_memory\_startup\_bytes](#input\_veeam\_memory\_startup\_bytes) | Specifies the amount of memory that the virtual machine is to be allocated upon startup | `number` | n/a | yes |
| <a name="input_veeam_name"></a> [veeam\_name](#input\_veeam\_name) | The name of the virtual machine | `string` | n/a | yes |
| <a name="input_veeam_nic_name"></a> [veeam\_nic\_name](#input\_veeam\_nic\_name) | Specifies the name for the virtual network adapter | `string` | n/a | yes |
| <a name="input_veeam_nic_switch"></a> [veeam\_nic\_switch](#input\_veeam\_nic\_switch) | Specifies the name of the virtual switch to connect to the new network adapterlue | `string` | n/a | yes |
| <a name="input_veeam_processor_count"></a> [veeam\_processor\_count](#input\_veeam\_processor\_count) | Specifies the number of virtual processors for the virtual machine | `number` | n/a | yes |
| <a name="input_veeam_server_vhd_path"></a> [veeam\_server\_vhd\_path](#input\_veeam\_server\_vhd\_path) | Path to the new virtual hard disk file(s) that is being created or being copied to | `string` | n/a | yes |
| <a name="input_veeam_server_vhd_size"></a> [veeam\_server\_vhd\_size](#input\_veeam\_server\_vhd\_size) | The maximum size, in bytes, of the virtual hard disk to be created | `number` | n/a | yes |
| <a name="input_veeam_smart_paging_file_path"></a> [veeam\_smart\_paging\_file\_path](#input\_veeam\_smart\_paging\_file\_path) | Specifies the folder in which the Smart Paging file is to be stored | `string` | n/a | yes |
| <a name="input_veeam_snapshost_file_location"></a> [veeam\_snapshost\_file\_location](#input\_veeam\_snapshost\_file\_location) | Specifies the folder in which the virtual machine is to store its snapshot files | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
