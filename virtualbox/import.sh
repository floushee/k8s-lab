#!/bin/bash
VBoxManage import  ../packer/output/master-01/master-01.ovf --vsys 0 --vmname "master-01" --group "/k8s-lab"
VBoxManage import  ../packer/output/worker-01/worker-01.ovf --vsys 0 --vmname "worker-01" --group "/k8s-lab"
VBoxManage import  ../packer/output/storage-01/storage-01.ovf --vsys 0 --vmname "storage-01" --group "/k8s-lab"

