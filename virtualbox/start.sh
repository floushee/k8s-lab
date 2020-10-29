#!/bin/bash
VBoxManage startvm "master-01" --type headless
VBoxManage startvm "worker-01" --type headless
