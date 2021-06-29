+++
title = "Infrastructure Currently Available"
date = "2019-08-07"
author = "Ken Moini"
sec = 2
+++


Below is a listing of the infrastructure that can be utilized as part of Kemo Labs:
<!---
### Rocinante

The Rocinante (rocinante.kemo.labs) is a Dell R720 server with the following configuration:

- 40 vCPUs
- 386GB RAM
- 3TB local HDD storage in RAID 60
- NVidia M40 GPU
- RHEL 8.3, serving:
  - [Cockpit](https://rocinante.kemo.labs:9090/)
  - Libvirt/KVM
  - Half the nodes of the [Core OpenShift cluster](https://console-openshift-console.apps.core-ocp.kemo.labs/)

### Serenity

Serenity (serenity.kemo.labs) is a Dell R720 server with the following configuration:

- 40 vCPUs
- 386GB RAM
- 3TB local HDD storage in RAID 60
- NVidia M40 GPU
- NVidia Quadro RTX 4000
- RHEL 8.3, serving:
  - [Cockpit](https://serenity.kemo.labs:9090/)
  - Libvirt/KVM
  - Half the nodes of the [Core OpenShift cluster](https://console-openshift-console.apps.core-ocp.kemo.labs/)
--->
### Raza

The Raza (raza.kemo.labs) is a custom-built AMD EPYC server with the following configuration:

- 32 vCPUs
- 256GB RAM
- 9TB local NVMe storage
- RHEL 8.3, serving:
  - [Cockpit](https://raza.kemo.labs:9090/)
  - Libvirt/KVM
  - Podman
  - Core network services such as DNS, NFS, and VPN
  - Running the nodes of the [Core OpenShift cluster](https://console-openshift-console.apps.core-ocp.kemo.labs/)
