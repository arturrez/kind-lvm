#!/bin/bash

kind create cluster --name kind --config cluster.yaml

kubectx kind-kind
kubens kube-system
kubectl apply -f ./lvm.yaml

