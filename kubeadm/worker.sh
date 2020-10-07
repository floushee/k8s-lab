#!/bin/bash

#If you didn't keep the output, on the master, you can get the token.
# kubeadm token list

#If you need to generate a new token, perhaps the old one timed out/expired.
# kubeadm token create

#On the master, you can find the ca cert hash.
# openssl x509 -pubkey -in /etc/kubernetes/pki/ca.crt | openssl rsa -pubin -outform der 2>/dev/null | openssl dgst -sha256 -hex | sed 's/^.* //'

# kubeadm token create --print-join-command

#Using the master (API Server) IP address or name, the token and the cert has, let's join this Node to our cluster.
sudo kubeadm join 192.168.56.111:6443 \
    --token pgfpgb.jgdmfbtlchzlgbte \
    --discovery-token-ca-cert-hash sha256:ff1d2fcf199a55038fcf9e8a377e457f30126a52c299d633e94b5a3873dc5e6e


kubeadm join 192.168.56.111:6443 --token 4zb85g.abuy40ne4kr793gz --discovery-token-ca-cert-hash sha256:ff1d2fcf199a55038fcf9e8a377e457f30126a52c299d633e94b5a3873dc5e6e
