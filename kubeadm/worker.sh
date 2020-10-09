#!/bin/bash

#If you didn't keep the output, on the master, you can get the token.
# kubeadm token list

#If you need to generate a new token, perhaps the old one timed out/expired.
# kubeadm token create

#On the master, you can find the ca cert hash.
# openssl x509 -pubkey -in /etc/kubernetes/pki/ca.crt | openssl rsa -pubin -outform der 2>/dev/null | openssl dgst -sha256 -hex | sed 's/^.* //'

# kubeadm token create --print-join-command

#Using the master (API Server) IP address or name, the token and the cert has, let's join this Node to our cluster.
sudo kubeadm join 192.168.56.111:6443 --token z041a4.v97lc3f5vivc1pse \
  --discovery-token-ca-cert-hash sha256:75056f92e700c78994e389a5045b64431ab08488eaf3c61e050340ee96dae0e1 \
    --control-plane
