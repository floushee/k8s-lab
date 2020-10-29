#!/bin/bash
vboxmanage controlvm "master-01" poweroff soft
vboxmanage controlvm "worker-01" poweroff soft
