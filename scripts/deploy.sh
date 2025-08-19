#!/bin/bash
echo "Deploying to EKS..."
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
echo "Deployment complete!"
