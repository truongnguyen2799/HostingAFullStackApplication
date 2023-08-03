# The project pipeline
## Project orbs
-node: circleci/node@5.0.2
-eb: circleci/aws-elastic-beanstalk@2.0.1
-aws-cli: circleci/aws-cli@14.0.7
## Project script
"scripts": {
    "frontend:install": "cd udagram/udagram-frontend && npm install -f",
    "frontend:start": "cd udagram/udagram-frontend && npm run start",
    "frontend:build": "cd udagram/udagram-frontend && npm run build",
    "frontend:test": "cd udagram/udagram-frontend && npm run test",
    "frontend:e2e": "cd udagram/udagram-frontend && npm run e2e",
    "frontend:lint": "cd udagram/udagram-frontend && npm run lint",
    "frontend:deploy": "cd udagram/udagram-frontend && npm run deploy",
    "api:install": "cd udagram/udagram-api && npm install .",
    "api:build": "cd udagram/udagram-api && npm run build",
    "api:start": "cd udagram/udagram-api && npm run dev",
    "api:deploy": "cd udagram/udagram-api && npm run deploy",
    "deploy": "npm run api:deploy && npm run frontend:deploy"
}
## Project Job

### Hold

    Hold the build of `main` branch to get approval. After the build is approved, run deploy job.

### Deploy

    - node/install:
          node-version: '14.15' 
      - eb/setup
      - aws-cli/setup
      - checkout
      - run:
          name: Deploy App
          # TODO: Install, build, deploy in both apps
          command: |
            npm run deploy

## Diagram
    pipeline.drawio.png