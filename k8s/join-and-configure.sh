#!/bin/bash
# join worker nodes to master
joinCommand=$(ssh -i ../ssh/packer -o "StrictHostKeyChecking=no" floushee@master-01 kubeadm token create --print-join-command 2> /dev/null)
ssh -i ../ssh/packer -o "StrictHostKeyChecking=no" floushee@worker-01 sudo $joinCommand

# get kube config for cluster access
if [ -f ~/.kube/config ];then
  cp -f ~/.kube/config ~/.kube/config.`date '+%Y%m%d%H%M%s'`.bkp
fi
scp -i ../ssh/packer floushee@master-01:/home/floushee/.kube/config ~/.kube/config
