#!/bin/bash
# as root
kubeadm init --pod-network-cidr=10.244.0.0/16 --apiserver-advertise-address=192.168.56.111 --control-plane-endpoint=192.168.56.111 --ignore-preflight-errors=NumCPU

# as non root user
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# install calico (networking add-on)
curl -O https://docs.projectcalico.org/manifests/calico.yaml
# configure CALICO_IPV4POOL_CIDR to be 10.244.0.0/16
vi calico.yaml

# install pod networking add-on
sudo kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
