# Technical roadmap
Roadmap in details:
- [x] User Onboarding and Wallet Creation
    - [x] Implement user registration
    - [x] Implement email verification
    - [x] Expose endpoints for /accounts, /transfer
    - [x] Implement utility functions around User Account and Wallet management.
    - [x] Generate unique wallet ID based on the user's email
    - [x] Rewrite `GetAccountByID` to be `GetAccountByWalletID`.
    - [x] Add `GetAccountByEmail` function.
    - [x] Write tests.

- [ ] Wallet Creation for Different Blockchains
  - [x] Implement Ethereum Wallet Creation
  - [x] Write tests
  - [ ] Implement Bitcoin Wallet Creation
  - [ ] Write tests

- [ ] Database Integration
  - [x] Implement database operations for user onboarding with `users` and `account`
  - [ ] Setup development Postgres DB via Docker for testing
  - [ ] Implement database operations for wallet management
  - [ ] Setup development Postgres DB via Docker for testing

- [ ] Define API endpoints
    - [ ] Implement `/swap` endpoint
    - [ ] Implement `/stake` endpoint
    - [ ] Implement `/feeds` endpoint

- [ ] Implement API Handlers
    - [ ] Create handlers for each API endpoint
    - [ ] Handle incoming HTTP requests
    - [ ] Validate inputs
    - [ ] Interact with application services

- [ ] Implement Services
    - [ ] Implement wallet service logic

- [ ] Token Conversion and Wallet Management
    - [ ] Implement token conversion logic
    - [ ] Store converted tokens in the user's wallet

- [ ] Swap Functionality
    - [ ] Implement token swapping functionality
    - [ ] Receive external web2 tokens
    - [ ] Write logic that implements the liquidity swap following pre-set metrics from web2 tokens to $CLDS
    - [ ] Find multi-chain wallet service to use
    - [ ] Read multi-chain wallet service docs
    - [ ] Begin swap to web3 tokens functionality

- [ ] Staking Functionality
    - [ ] Implement staking functionality
    - [ ] Set up smart contracts or mechanisms for staking

- [ ] Feeds Endpoint
    - [ ] Implement the Feeds endpoint for news and announcements
    - [ ] Fetch and display relevant information

- [ ] Testing
    - [ ] Write unit tests
    - [ ] Write integration tests

- [ ] Documentation
    - [ ] Document API endpoints
    - [ ] Document data models
    - [ ] Document setup and running instructions

- [ ] Deployment
    - [ ] Create deployment scripts
    - [ ] Deploy the application to your chosen hosting environment

- [ ] Monitoring and Logging
    - [ ] Implement monitoring
    - [ ] Implement logging
    - [ ] Set up alerts for critical events

- [ ] User Interface
    - [ ] Develop the mobile user interface 
    - [ ] Integrate it with the backend endpoints

- [ ] Community and Support
    - [ ] Set up a support system for $CLDX users.
