# Lab 2 Setup Complete

## What Was Created

This lab setup includes all files needed for Lab 2: Implement a Single-Stage GitHub Actions Pipeline.

### Files Created:

1. **package.json** - Node.js project configuration with:
   - Express.js dependency for the web server
   - Jest and Supertest for testing
   - Build and test scripts

2. **src/app.js** - Main application with three endpoints:
   - `/` - Welcome page returning JSON
   - `/health` - Health check endpoint
   - `/api/hello` - Simple API endpoint

3. **tests/app.test.js** - Jest test suite with three tests:
   - Test for welcome page
   - Test for health check
   - Test for API endpoint

4. **.github/workflows/simple-ci.yml** - GitHub Actions workflow that:
   - Triggers on push/PR to main branch
   - Checks out code
   - Sets up Node.js 18
   - Installs dependencies
   - Runs tests
   - Builds the application
   - Shows build results

5. **.gitignore** - Ignores node_modules, dist, logs, etc.

6. **README.md** - Updated with project documentation

## Next Steps

To use this lab locally:

1. Install dependencies:
   ```bash
   npm install
   ```

2. Run tests:
   ```bash
   npm test
   ```

3. Build the application:
   ```bash
   npm run build
   ```

4. Start the server:
   ```bash
   npm start
   ```

## To Enable GitHub Actions

When you push this to GitHub, the workflow will automatically run on:
- Every push to the main branch
- Every pull request to the main branch

The workflow will:
1. ✅ Checkout your code
2. ✅ Setup Node.js environment
3. ✅ Install dependencies
4. ✅ Run all tests
5. ✅ Build the application
6. ✅ Display build results

## Expected Workflow Behavior

The GitHub Actions workflow should complete successfully with all steps showing green checkmarks. Each step performs a specific CI/CD task:

- **Get Code** - Retrieves your repository code
- **Setup Node.js** - Prepares Node.js 18 environment
- **Install Dependencies** - Runs npm install
- **Run Tests** - Executes Jest tests
- **Build App** - Creates dist folder with compiled code
- **Show Build Results** - Lists files in dist folder

## Lab Review Answer

The correct answer to the lab review question is:
**C. on** - This section defines when the workflow should be triggered (push, pull_request, etc.)
