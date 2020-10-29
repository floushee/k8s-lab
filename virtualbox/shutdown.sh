#!/bin/bash
vboxmanage controlvm "worker-01" poweroff soft
vboxmanage controlvm "master-01" poweroff soft
vboxmanage controlvm "storage-01" poweroff soft
