+++
title = "Infrastructure Currently Available"
date = "2024-02-03"
author = "Ken Moini"
sec = 2
+++


Below is a listing of the infrastructure that can be utilized as part of Kemo Labs:

### Raza

The Raza (raza.kemo.labs) is a custom-built AMD EPYC server with the following configuration:

- 32 vCPUs
- 256GB RAM
- 9TB local NVMe storage
- NVIDIA Quadro RTX 4000
- RHEL 8.8, serving:
  - [Cockpit](https://raza.kemo.labs:9090/)
  - Libvirt/KVM
  - Podman
  - Core network services such as VPN
  - Running the Control Plan nodes of the [Core OpenShift cluster](https://console-openshift-console.apps.core-ocp.d70.lab.kemo.network/)
- [BMC](https://raza.mgmt.kemo.labs/)

### Endurance

The Endurance (endurance.kemo.labs) is a custom-built AMD EPYC server with the following configuration:

- 64 vCPUs
- 512GB RAM
- 6TB local NVMe storage
- NVIDIA Bluefield-2 DPU (non-operational)
- PCIe USB 3.1 Adapter Card
- RHEL 9.2 serving:
  - [Cockpit](https://endurance.kemo.labs:9090/)
  - Libvirt/KVM
  - Podman
  - Running the Application nodes of the [Core OpenShift cluster](https://console-openshift-console.apps.core-ocp.d70.lab.kemo.network/)
- [BMC](https://endurance.mgmt.kemo.labs/)

### Serenity

The Serenity (serenity.kemo.labs) is a Dell R730 server with the following configuration:

- 2x) Xeon E5-2698 v4 @ 2.20GHz, 20C/40T each
- 512GB RAM
- 2TB local NVMe
- 1.64TB local spinning disks
- NVIDIA Bluefield-2 DPU (non-operational)
- vSphere 7 Host (https://serenity.kemo.labs)
  - [vCenter](https://vcenter.lab.kemo.network/)
  - Running the Infrastructure nodes of the [Core OpenShift cluster](https://console-openshift-console.apps.core-ocp.d70.lab.kemo.network/)
- [iDRAC](https://serenity.mgmt.kemo.labs/)

### Maximus

Maximus (maximus.kemo.labs) is a Ampere Altra Developer Platform system with the following configuration:

- Ampere Altra 128-core Arm v8.2 64-bit CPU up to 2.6GHz
- 386GB RAM
- 2TB local NVMe
- NVIDIA Quadro A4000 RTX GPU
- RHEL 9.2
- [Cockpit](https://maximus.kemo.labs:9090/)
- [BMC](https://maximus.mgmt.kemo.labs/)

### Avalon

Avalon (avalon.kemo.labs) is a AVA Developer Platform system with the following configuration:

- Ampere Altra 32-core Arm v8.2 64-bit CPU up to 1.7GHz
- 128GB RAM
- Storage (???)
- NVIDIA RTX 3060 TI GPU
- RHEL 9.2
- [Cockpit](https://avalon.kemo.labs:9090/)
- [BMC](https://avalon.mgmt.kemo.labs/)

### Suki

Suki (suki.kemo.labs) is a spare custom-built EPYC server that can be brought online for a variety of tasks if needed, such as bare metal SNO.  It has the following configuration:

- AMD EPYC 7251 with 16 vCPUs (8C/16T)
- 128GB RAM
- 3TB local NVMe storage
- [Cockpit](https://suki.kemo.labs:9090/)
- [BMC](https://suki.mgmt.kemo.labs/)

### Core Kubernetes Cluster

Many of the primary services are provided by a 3-node Kubernetes cluster.  It serves DNS, Pi-Hole, Vault, StepCA, among other services.

- [API Server](https://api.k8s.kemo.labs:6443)
- Nodes, Beelink SER5 MAX running Fedora 34:
  - k8s-1.kemo.labs - [Cockpit](https://k8s-1.kemo.labs:9090/)
  - k8s-2.kemo.labs - [Cockpit](https://k8s-2.kemo.labs:9090/)
  - k8s-3.kemo.labs - [Cockpit](https://k8s-3.kemo.labs:9090/)
- 512GB local NVMe for boot
- 1TB local SSD for Longhorn provided storage
- Services include:
  - PowerDNS
  - Pi-Hole
  - [ArgoCD](https://argocd.apps.k8s.kemo.labs/)
  - [Vault](https://vault.apps.k8s.kemo.labs/)
  - [Step CA](https://stepca.apps.k8s.kemo.lab/)

### Deep Thought

Deep Thought (deep-thought.kemo.labs) is the TrueNAS Scale storage server that is installed on a QNAP TVS-h1688X with the following configuration:

- Xeon W-1250 6C/12T
- 128GB RAM
- 2x512GB Mirrored Boot Drives
- 8x12TB Drives
- 4x16TB Drives
- 4x4TB NVMe for Data
- 4x1TB NVMe for Cache
- [TrueNAS Scale Dashboard](https://deep-thought.kemo.labs/)

### Normandy 

Normandy (normandy.kemo.labs) is the core service host for the network and is a Minisforum MS-01 system.

> TODO

### Rocinante

Rocinante (rocinante.kemo.labs) is the ESXi host used for dev/testing purposes in the lab.  It also runs on an Minisforum MS-01.

vcenter.kemo.labs

> TODO