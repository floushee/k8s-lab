#!/bin/bash
VBoxManage import  ../nodes/output/master-01/master-01.ovf --vsys 0 --vmname "master-01" --group "/k8s-lab"
VBoxManage import  ../nodes/output/worker-01/worker-01.ovf --vsys 0 --vmname "worker-01" --group "/k8s-lab"
VBoxManage import  ../nodes/output/storage-01/storage-01.ovf --vsys 0 --vmname "storage-01" --group "/k8s-lab"
