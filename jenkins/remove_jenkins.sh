#!/bin/bash
NAMESPACE=jenkins

echo "Deleting all resources in namespace: $NAMESPACE"
kubectl delete all --all -n $NAMESPACE
kubectl delete pvc --all -n $NAMESPACE
kubectl delete secret --all -n $NAMESPACE
kubectl delete configmap --all -n $NAMESPACE

echo "Deleting namespace: $NAMESPACE"
kubectl delete namespace $NAMESPACE

