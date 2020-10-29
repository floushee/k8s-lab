#!/bin/bash
VBoxManage startvm "storage-01" --type headless
VBoxManage startvm "master-01" --type headless
VBoxManage startvm "worker-01" --type headless
