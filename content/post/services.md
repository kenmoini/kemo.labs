+++
title = "Services"
date = "2019-08-07"
author = "Ken Moini"
sec = 3
+++

You can find the following services constantly operating in the network:

- **Identity Management**, provides LDAP: https://idm.kemo.labs/
- **NTP Server**: 192.168.42.14
- **VPN Server**: External access via `lab.vpn.kemo.network`
- **Primary OpenShift Cluster (*often reset*)**: https://console-openshift-console.apps.core-ocp.d70.lab.kemo.network/
- **NFS Server**: `deep-thought.kemo.labs`
- [K8s] **PowerDNS Authoritative DNS**:
  - [NS1](https://ns1.apps.k8s.kemo.labs/)
  - [NS1 API](https://ns1-api.apps.k8s.kemo.labs/)
  - [NS2](https://ns2.apps.k8s.kemo.labs/)
  - [NS2 API](https://ns2-api.apps.k8s.kemo.labs/)
- [K8s] **Pi-Hole Ad Blocking DNS**:
  - [Pi-Hole 1](https://pihole-1.apps.k8s.kemo.labs/admin)
  - [Pi-Hole 2](https://pihole-1.apps.k8s.kemo.labs/admin)
- [K8s] [StepCA](https://stepca.apps.k8s.kemo.labs/)
- [K8s] [Vault](https://vault.apps.k8s.kemo.labs/)
- [K8s] [LEGO Bridge](https://lego-bridge.apps.k8s.kemo.labs/)
- [K8s] [Kubernetes Dashboard](https://dashboard.apps.k8s.kemo.labs/)
- [K8s] [Longhorn Storage](https://longhorn.apps.k8s.kemo.labs/)
- [K8s] Squid Outbound HTTP Proxy - `http://192.168.42.31:3128`
- phpIPAM
- JFrog Registry
- Harbor Registry
- Nexus Registry
- sushy-tools
- Keycloak
- Grafana
- Radarr
- Sonarr
- Bazarr
- Overseerr
- Jackett
- sabnzd
- Deluge
- Plex
- [Minio](https://deep-thought.kemo.labs:9002/)
