# Simple CI/CD Pipeline

Lab 2: Implement a Single-Stage GitHub Actions Pipeline

## Overview

This is a simple Node.js web application demonstrating CI/CD practices using GitHub Actions. The application includes basic API endpoints and automated testing.

## Features

- Simple Express.js web server
- Health check endpoint
- API endpoints
- Automated testing with Jest
- GitHub Actions CI/CD workflow

## Project Structure

```
.
├── .github/
│   └── workflows/
│       └── simple-ci.yml    # GitHub Actions workflow
├── src/
│   └── app.js               # Main application file
├── tests/
│   └── app.test.js          # Test file
├── package.json             # Project dependencies
└── README.md
```

## Local Development

### Prerequisites

- Node.js 18 or higher
- npm

### Installation

```bash
npm install
```

### Run Tests

```bash
npm test
```

### Build Application

```bash
npm run build
```

### Start Server

```bash
npm start
```

The server will run on http://localhost:3000

## API Endpoints

- `GET /` - Welcome page
- `GET /health` - Health check
- `GET /api/hello` - Hello endpoint

## CI/CD Workflow

The GitHub Actions workflow (`.github/workflows/simple-ci.yml`) automatically:

1. Checks out the code
2. Sets up Node.js environment
3. Installs dependencies
4. Runs tests
5. Builds the application
6. Shows build results

The workflow is triggered on:
- Push to main branch
- Pull requests to main branch

## Lab Tasks Completed

- ✅ Created Node.js web application
- ✅ Implemented API endpoints
- ✅ Written tests using Jest
- ✅ Created GitHub Actions workflow
- ✅ Implemented automated testing and build process