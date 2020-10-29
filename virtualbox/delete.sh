#!/bin/bash
VBoxManage unregistervm --delete "master-01"
VBoxManage unregistervm --delete "worker-01"
VBoxManage unregistervm --delete "storage-01"
