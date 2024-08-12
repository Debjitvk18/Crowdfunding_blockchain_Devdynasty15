# Crowd Funding Project
## Project Description
The Crowd Funding Project is a decentralized application (dApp) built using the Move language on the Aptos blockchain. The goal of this project is to create a platform that allows users to create and manage crowdfunding campaigns, enabling individuals to raise funds for various causes or projects in a secure and transparent manner.

This project leverages the capabilities of blockchain technology to ensure that all transactions are transparent and immutable, providing a high level of trust between campaign creators and donors. The platform allows campaign creators to specify details such as the campaign title, description, target funding amount, deadline, and associated image. Donors can contribute to campaigns by sending funds directly to the campaign, with their contributions being tracked on the blockchain.

Project Vision
The vision of the Crowd Funding Project is to democratize access to funding by leveraging the decentralization, transparency, and security of blockchain technology. The project aims to empower individuals and organizations to raise funds for their initiatives without relying on traditional financial institutions, thereby reducing barriers to entry and fostering innovation. By ensuring that all transactions are publicly verifiable and immutable, the platform seeks to build trust among users and create a community-driven ecosystem where people can support causes they believe in.

# Features
Campaign Creation: Users can create crowdfunding campaigns with specific details such as title, description, target amount, deadline, and an image. Each campaign is associated with a unique address on the blockchain.

Donation Mechanism: Donors can contribute funds to campaigns. Their donations are tracked on the blockchain, and each donor's contribution is linked to their address.

# Campaign Tracking: The platform provides real-time tracking of the total funds collected for each campaign, allowing both campaign creators and donors to monitor progress.

Transparency and Trust: By leveraging the Aptos blockchain, the project ensures that all transactions are transparent, immutable, and publicly verifiable, enhancing trust between all parties involved.

Smart contract
The smart contract for this project is implemented in Move, a language specifically designed for safe and secure resource management on the blockchain. The key components of the contract are:

Campaign Struct: This struct defines the properties of a campaign, including the owner's address, title, description, target amount, deadline, collected amount, associated image, and lists of donators and donations.

CrowdFunding Struct: This struct holds a vector of all campaigns and tracks the total number of campaigns.

Create Campaign: This function allows a user to create a new campaign by providing the necessary details. The campaign is then added to the list of active campaigns.

Donate to Campaign: This function allows users to donate to a specific campaign by specifying the campaign ID and the donation amount. The donation is recorded on the blockchain, and the total amount collected for the campaign is updated.

Get Donators: This function retrieves the list of donators and their corresponding donations for a specific campaign.

Get Campaigns: This function returns a list of all active campaigns on the platform.

Initialize: This function initializes the CrowdFunding struct, setting up the initial state of the platform.

# Getting Started
Prerequisites
Aptos CLI: Install the Aptos CLI to interact with the Aptos blockchain.
Move CLI: Install the Move CLI to compile and deploy smart contracts written in the Move language.
Installation
Clone the repository:

bash
Copy code
git clone https://github.com/your-repo/crowdfunding-project.git
Navigate to the project directory:

# bash
Copy code
cd crowdfunding-project
Compile the smart contract:

arduino
Copy code
move build
Deploy the contract to the Aptos blockchain:

scss
Copy code
aptos move publish --assume-yes --named-addresses default=0xYourAddress
Usage
Initialize the Platform: Initialize the CrowdFunding contract by running the initialize function.

arduino
Copy code
aptos move run --function-id 0xYourAddress::CrowdFunding::initialize --args <signer>
Create a Campaign: Create a new campaign by calling the create_campaign function with the necessary details.

arduino
Copy code
aptos move run --function-id 0xYourAddress::CrowdFunding::create_campaign --args <title> <description> <target> <deadline> <image>
Donate to a Campaign: Donate to a campaign by calling the donate_to_campaign function with the campaign ID and donation amount.

arduino
Copy code
aptos move run --function-id 0xYourAddress::CrowdFunding::donate_to_campaign --args <campaign_id> <amount>
View Campaigns: Retrieve the list of active campaigns by calling the get_campaigns function.

arduino
Copy code
aptos move run --function-id 0xYourAddress::CrowdFunding::get_campaigns
View Donators: View the list of donators and their contributions for a specific campaign by calling the get_donators function.

arduino
Copy code
aptos move run --function-id 0xYourAddress::CrowdFunding::get_donators --args <campaign_id>
Contributing
Contributions to the Crowd Funding Project are welcome! If you have ideas for new features or improvements, feel free to fork the repository and submit a pull request.

# License
This project is licensed under the MIT License. See the LICENSE file for details.
