#!/bin/bash
VBoxManage import  ../packer/output/master-01/master-01.ovf --vsys 0 --vmname "master-01" --group "/k8s-lab"
VBoxManage import  ../packer/output/worker-01/worker-01.ovf --vsys 0 --vmname "worker-01" --group "/k8s-lab"
VBoxManage import  ../packer/output/worker-02/worker-02.ovf --vsys 0 --vmname "worker-02" --group "/k8s-lab"
