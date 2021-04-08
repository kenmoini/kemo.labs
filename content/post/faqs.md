+++
title = "FAQs"
date = "2019-08-07"
author = "Ken Moini"
sec = 4
+++


- #### What networks are used in Kemo Labs?

  `192.168.42.0/24` and `192.168.46.0/24` are routed through the VPN tunnel with the base domain of `kemo.labs` and `mgmt.kemo.labs` respectively.  DHCP provides IP pools starting at `x.x.x.125`

- #### How do I add DNS entries and assign static IPs?

  Submit a Pull Request with your justifications and modifications to the following two files:

  - https://github.com/kenmoini/homelab/blob/main/containers-as-a-service/dns-core-1/volumes/etc-conf/zones.yml
  - https://github.com/kenmoini/homelab/blob/main/containers-as-a-service/dns-core-2/volumes/etc-conf/zones.yml

- #### I don't have sudo access to X command on these servers - what gives?

  LabAdmins have access to a limited subset of allowed binaries - if you require additional access just holler, or create a VM to do whatever.

- #### What can I do in this environment?

  More or less whatever you'd like - it's a large pool of resources that are often not fully used.  Create VMs, spin up containers with Podman, create your own OpenShift cluster, etc.  If the resources are shared or not yours then please avoid destructive functions, and otherwise please prefix/suffix your resources with your initials (eg someVM-km) and be considerate of resource consumption so others can also benefit if you are not in active use.

- #### Lifecycle of services?

  The primary OpenShift cluster will likely be stood up and torn down frequently so ensure your workloads are deployed with manifests for easy redeployment.

- #### How do I create a VM?

  The systems all have RHEL 8.3 installed and run Libvirt/KVM as the hypervisor.  This is a sample Bash script that can [set up a VM on the Raza](https://github.com/kenmoini/homelab/blob/main/bash_scripts/setup_idm.sh), and one to [set up multiple VMs on Serenity and Rocinante](https://github.com/kenmoini/homelab/blob/main/bash_scripts/ocp4_ai_virt-install.sh).  You can monitor/access them via Cockpit as well.

- #### How do I deploy a Container/Pod with Podman?

  Shared Podman usage on the Raza is not allowed because this serves a few containers that provide core services to the environment such as DNS, NFS, and VPN - please create a RHEL VM and deploy Podman and your containers there.  You can [use this Ansible Playbook to quickly do so](https://github.com/kenmoini/homelab/blob/main/ansible-collections/deploy-podman.yml).

- #### Is there a Satellite server?

  No because I don't want Rich Jerrido to slap me upside the head with some excerpt from Appendix 1 that probably doesn't allow that sort of shared use.  Use your Employee SKU to subscribe RHEL VMs, or your personal Developer Subscription if you so choose - the OpenShift cluster(s) are always fully subscribed and entitled to RHSM upon bootstrapping.

- #### Can I create my own OpenShift cluster?

  Libvirt IPI is only for development purposes and requires a custom compilation of `openshift-install` - the recommended way to provision a cluster would be via the Assisted Installer which is how the primary OpenShift cluster is deployed.
You have cluster-admin access to the primary cluster and there should be plenty of resources to deploy whatever workloads you require - if you still require a separate cluster all that's needed is to map static IPs and set DNS entries.

- #### Can I use this and the Red Hat VPN at the same time?

  Technically yes since the network blocks do not overlap and split-DNS is utilized however there is no easy way to do so currently without A) setting one VPN active on your gateway/router or B) using multiple OpenVPN clients and tun/tap network adapters on your system.

- #### Why not use something like RHV or ESXi?

  It's a royal pain in the ass to pass PCI devices through to VMs in RHV and to pass GPUs through vSphere you need Enterprise Plus licenses which are not included in the VMUG Advantage subscription and are not something I'm going to pay for...so RHEL + Libvirt it is.

- #### Who else has access to this environment?

  This environment is just able to be accessed by about 10 Red Hat SAs.