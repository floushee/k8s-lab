#!/bin/bash

# install kubernetes and dependencies
ansible-playbook -i inventory master.yml worker.yml storage.yml

# join worker nodes to master
joinCommand=$(ssh -i ../ssh/packer -o "StrictHostKeyChecking=no" floushee@master-01 kubeadm token create --print-join-command 2> /dev/null)
ssh -i ../ssh/packer -o "StrictHostKeyChecking=no" floushee@worker-01 sudo $joinCommand

# get kube config for cluster access
scp -i ../ssh/packer floushee@master-01:/home/floushee/.kube/config ~/.kube/k8s-lab.config
