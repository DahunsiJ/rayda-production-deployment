#!/bin/bash

echo "🔧 Updating deployment.yaml with your Docker Hub image..."

# Replace the image line and add imagePullPolicy
sed -i 's|image: .*|image: dahunsij/fastapi-service:latest\n        imagePullPolicy: Always|' k8s/deployment.yaml

echo "✅ deployment.yaml patched successfully."
