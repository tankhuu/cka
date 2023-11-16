#!/bin/bash
mkdir ~/.kube
sudo cp -i /etc/kubernetes/admin.conf ~/.kube/config
sudo chown $(id -u):$(id -g) .kube/config

sudo apt-get install bash-completion
echo 'source <(kubectl completion bash)' >> ~/.bashrc
source ~/.bashrc

kubectl get nodes