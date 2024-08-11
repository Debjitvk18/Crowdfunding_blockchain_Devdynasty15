# CrowdFunding Move Smart Contract

This repository contains a crowdfunding smart contract implemented in the Move language. The contract allows users to create campaigns, donate to them, and view campaign details.

## Features

- **Create Campaigns:** Users can create new crowdfunding campaigns with a title, description, target amount, deadline, and image.
- **Donate to Campaigns:** Users can donate to active campaigns, contributing to the campaign's funding goal.
- **View Campaign Details:** Users can retrieve information about all campaigns and the list of donors for a specific campaign.

## Contract Structure

### Campaign

The `Campaign` struct stores information about each crowdfunding campaign:

- `owner`: The address of the campaign creator.
- `title`: The title of the campaign.
- `description`: A brief description of the campaign.
- `target`: The funding target for the campaign.
- `deadline`: The deadline for the campaign.
- `amount_collected`: The total amount of funds collected so far.
- `image`: An image associated with the campaign.
- `donators`: A list of addresses of those who have donated.
- `donations`: A list of donation amounts corresponding to the donators.

### Functions

- `create_campaign(account: &signer, title: vector<u8>, description: vector<u8>, target: u64, deadline: u64, image: vector<u8>)`
  - Creates a new crowdfunding campaign.
  
- `donate_to_campaign(account: &signer, campaign_id: u64, amount: u64)`
  - Allows users to donate to a specific campaign.

- `get_donators(campaign_id: u64): (vector<address>, vector<u64>)`
  - Retrieves the list of donors and corresponding donation amounts for a specific campaign.

- `get_campaigns(): vector<Campaign>`
  - Retrieves all the campaigns that have been created.

- `initialize(account: &signer)`
  - Initializes the contract by setting up the `CrowdFunding` struct.

## Setup and Deployment

### Prerequisites

- **Move Language Toolchain:** Ensure you have the Move toolchain installed.
- **Aptos CLI** (if deploying on Aptos): Install the Aptos CLI for managing accounts, building, and deploying Move modules.

### Steps to Deploy

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/your-username/CrowdFunding-Move.git
   cd CrowdFunding-Move
