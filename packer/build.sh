#!/bin/bash
rm -rf output
packer build -var 'vm_name=master-01' -var 'vm_static_ip=192.168.56.111' templates/centos-node.json 
packer build -var 'vm_name=worker-01' -var 'vm_static_ip=192.168.56.112' -var 'cpus=1' -var 'memory=1024' templates/centos-node.json 
