[![terraform](https://img.shields.io/badge/Terraform-purple?style=for-the-badge&logo=terraform)](https://www.terraform.io/)
[![azure](https://img.shields.io/badge/windows-blue?style=for-the-badge&logo=windows)](https://azure.microsoft.com/)
[![renovate](https://img.shields.io/badge/renovate-enabled-brightgreen?style=for-the-badge&logo=renovatebot)](https://github.com/renovatebot/renovate)

[![HitCount](https://hits.dwyl.com/qman-being/terraform-hyperv.svg?style=for-the-badge&show=unique)](http://hits.dwyl.com/qman-being/terraform-hyperv)

# Terraform Hyper-V

This repo contains various Terraform modules for building Hyper-V machines. The taliesins provider is being used. You can find the documentation for the provider [here](https://github.com/taliesins/terraform-provider-hyperv) and [here](https://registry.terraform.io/providers/taliesins/hyperv/latest)

## 📂 Repository structure

The Git repository contains the following directories:

```sh
📁 lab # Lab testing environment
📁 modules # these are common Hyper-V Terraform Modules
📁 pipelines # Azure DevOps pipeline files
📁 production # these are modules specific to my own environment
 ├─📁 host_01
 └─📁 host_02
```
