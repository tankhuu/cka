# Scripts for Setting up Vanilla K8s Cluster

## Terraform launch Nodes

### Control Plane

Ubuntu 20.04
tg4.small (free tier)
  2G RAM
  2 CPUs
20 GB disk space

### 2 Workers

Ubuntu 20.04
tg4.small (free tier)
  2G RAM
  2 CPUs
20 GB disk space

## Install tools

### Container Runtime & K8s Tools

[GitHub Link](https://github.com/sandervanvugt/cka)

- container runtime: setup-container.sh (CRI)
- k8s tools: setup-kubetools.sh
  - kubeadm
  - kubelet
  - kubectl

## Network Communication

- Node: physical network
- External-to-Service: k8s service resources
- Pod-to-Service: k8s services
- Pod-to-Pod: network plugin
- Container-to-Container: within pod

### Network Add-on

- Calico
- Flannel
- Multus
- Weave

## Install Cluster

### kubeadm init

- preflight
- certs
- kubeconfig
- kubelet-start
- control-plane
- etcd
- upload-config
- upload-certs (/etc/kubernetes/pki)
- mark-control-plane
- bootstrap-token
- kubelet-finalize
- add-on: coredns & kube-proxy

### Setup client

### Join Workers