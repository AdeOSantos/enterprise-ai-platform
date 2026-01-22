#!/bin/bash

# Health check
echo "=== Health Check ==="
curl -X GET http://localhost:8080/health

echo -e "\n"

# Prediction request
echo "=== Prediction Request ==="
curl -X POST http://localhost:8080/predict \
  -H "Content-Type: application/json" \
  -d '{
    "features": [0.5, 1.2, 3.4]
  }'

echo -e "\n"

# Batch prediction
echo "=== Batch Prediction ==="
curl -X POST http://localhost:8080/predict/batch \
  -H "Content-Type: application/json" \
  -d '{
    "instances": [
      [0.5, 1.2, 3.4],
      [0.8, 2.1, 4.5],
      [0.3, 1.5, 2.8]
    ]
  }'

echo -e "\n"

# Model info
echo "=== Model Info ==="
curl -X GET http://localhost:8080/model/info
