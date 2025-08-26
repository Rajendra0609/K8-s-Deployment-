#!/bin/bash

# Create the jenkins namespace if it doesn't exist
kubectl get namespace jenkins >/dev/null 2>&1 || kubectl create namespace jenkins

# Apply all YAML files in the current directory to the jenkins namespace
for file in *.yaml; do
  if [ "$file" != "jenkins-sa-token.yaml" ]; then
    echo "Applying $file to namespace jenkins"
    kubectl apply -f "$file" -n jenkins
    echo "Applied $file"
  fi
done

# Apply jenkins-sa-token.yaml separately
echo "Applying jenkins-sa-token.yaml to namespace jenkins"
kubectl apply -f jenkins-sa-token.yaml

# Extract and display the token
echo "
Add this token to the Jenkins Cloud Kubernetes credential to get authenticated:"
kubectl -n jenkins get secret jenkins-sa-token -o jsonpath='{.data.token}' | base64 --decode

echo "
Token extraction complete."
