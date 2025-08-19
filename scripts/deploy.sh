#!/bin/bash

echo "Deploying to EKS..."

# Update kubeconfig to access the cluster
aws eks update-kubeconfig --name brain-tasks-cluster --region ap-south-1

# Apply Deployment and Service
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

# Wait for deployment rollout
kubectl rollout status deployment/brain-tasks-app

# Verify service
kubectl get svc brain-tasks-service

echo "Deployment complete!"
