#!/bin/bash

# Lab 2 - Local Testing Script
# This script helps you test the lab locally before pushing to GitHub

echo "=================================="
echo "Lab 2: CI/CD Pipeline Local Test"
echo "=================================="
echo ""

# Step 1: Install dependencies
echo "Step 1: Installing dependencies..."
npm install
if [ $? -ne 0 ]; then
    echo "❌ Failed to install dependencies"
    exit 1
fi
echo "✅ Dependencies installed successfully"
echo ""

# Step 2: Run tests
echo "Step 2: Running tests..."
npm test
if [ $? -ne 0 ]; then
    echo "❌ Tests failed"
    exit 1
fi
echo "✅ All tests passed"
echo ""

# Step 3: Build application
echo "Step 3: Building application..."
npm run build
if [ $? -ne 0 ]; then
    echo "❌ Build failed"
    exit 1
fi
echo "✅ Build completed successfully"
echo ""

# Step 4: Show build results
echo "Step 4: Build results:"
ls -la dist/
echo ""

# Step 5: Summary
echo "=================================="
echo "✅ All steps completed successfully!"
echo "=================================="
echo ""
echo "Your application is ready to be pushed to GitHub."
echo "The GitHub Actions workflow will run the same steps automatically."
echo ""
echo "To start the server locally, run: npm start"
echo "The server will be available at: http://localhost:3000"
echo ""
echo "API Endpoints:"
echo "  - GET / - Welcome page"
echo "  - GET /health - Health check"
echo "  - GET /api/hello - Hello endpoint"
