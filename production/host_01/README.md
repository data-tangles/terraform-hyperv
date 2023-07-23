# host_01

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
| [hyperv_machine_instance.dc01](https://registry.terraform.io/providers/taliesins/hyperv/1.0.4/docs/resources/machine_instance) | resource |
| [hyperv_network_switch.production_vswitch](https://registry.terraform.io/providers/taliesins/hyperv/1.0.4/docs/resources/network_switch) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dc01_generation"></a> [dc01\_generation](#input\_dc01\_generation) | Specifies the generation, as an integer, for the virtual machine | `number` | n/a | yes |
| <a name="input_dc01_memory_startup_bytes"></a> [dc01\_memory\_startup\_bytes](#input\_dc01\_memory\_startup\_bytes) | Specifies the amount of memory that the virtual machine is to be allocated upon startup | `number` | n/a | yes |
| <a name="input_dc01_name"></a> [dc01\_name](#input\_dc01\_name) | The name of the virtual machine | `string` | n/a | yes |
| <a name="input_dc01_nic_name"></a> [dc01\_nic\_name](#input\_dc01\_nic\_name) | Specifies the name for the virtual network adapter | `string` | n/a | yes |
| <a name="input_dc01_nic_switch"></a> [dc01\_nic\_switch](#input\_dc01\_nic\_switch) | Specifies the name of the virtual switch to connect to the new network adapterlue | `string` | n/a | yes |
| <a name="input_dc01_os_disk_path"></a> [dc01\_os\_disk\_path](#input\_dc01\_os\_disk\_path) | Specifies the full path of the hard disk drive file to be added | `string` | n/a | yes |
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
| <a name="input_note_environment"></a> [note\_environment](#input\_note\_environment) | Note to indicate Environment | `string` | n/a | yes |
| <a name="input_production_vswitch_allow_management_os"></a> [production\_vswitch\_allow\_management\_os](#input\_production\_vswitch\_allow\_management\_os) | Specifies if the HyperV host machine will have access to network switch when created | `bool` | n/a | yes |
| <a name="input_production_vswitch_name"></a> [production\_vswitch\_name](#input\_production\_vswitch\_name) | Specifies the name of the switch to be created | `string` | n/a | yes |
| <a name="input_production_vswitch_switch_type"></a> [production\_vswitch\_switch\_type](#input\_production\_vswitch\_switch\_type) | Specifies the type of the switch to be created | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
