#!/bin/bash

kind create cluster --name kind --config cluster.yaml

kubectx kind-kind
kubens kube-system
kubectl apply -f ./lvm.yaml


helm install --repo https://arturrez.github.io/open-local/  open-local open-local --version v0.7.1 --wait

