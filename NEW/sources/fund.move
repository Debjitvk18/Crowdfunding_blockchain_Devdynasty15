module funding::CrowdFunding {
    
    use std::vector;
    use std::signer;
    use std::option;

    struct Campaign has copy, drop, store {
        owner: address,
        title: vector<u8>,
        description: vector<u8>,
        target: u64,
        deadline: u64,
        amount_collected: u64,
        image: vector<u8>,
        donators: vector<address>,
        donations: vector<u64>,
    }

    struct CrowdFunding has key {
        campaigns: vector<Campaign>,
        number_of_campaigns: u64,
    }

    public fun create_campaign(
        account: &signer, 
        title: vector<u8>, 
        description: vector<u8>, 
        target: u64, 
        deadline: u64, 
        image: vector<u8>
    ) {
        let owner = signer::address_of(account);
        let campaign = Campaign {
            owner,
            title,
            description,
            target,
            deadline,
            amount_collected: 0,
            image,
            donators: vector::empty(),
            donations: vector::empty(),
        };

        let crowdfunding = borrow_global_mut<CrowdFunding>(owner);
        vector::push_back(&mut crowdfunding.campaigns, campaign);
        crowdfunding.number_of_campaigns = crowdfunding.number_of_campaigns + 1;
    }

    public fun donate_to_campaign(account: &signer, campaign_id: u64, amount: u64) {
        let donator = signer::address_of(account);
        let crowdfunding = borrow_global_mut<CrowdFunding>(donator);
        let campaign = &mut crowdfunding.campaigns[campaign_id];

        vector::push_back(&mut campaign.donators, donator);
        vector::push_back(&mut campaign.donations, amount);

        campaign.amount_collected = campaign.amount_collected + amount;
    }

    public fun get_donators(campaign_id: u64): (vector<address>, vector<u64>) {
        let crowdfunding = borrow_global<CrowdFunding>(@0xYourAddress);
        let campaign = &crowdfunding.campaigns[campaign_id];
        (campaign.donators, campaign.donations)
    }

    public fun get_campaigns(): vector<Campaign> {
        let crowdfunding = borrow_global<CrowdFunding>(@0xYourAddress);
        crowdfunding.campaigns
    }

    public fun initialize(account: &signer) {
        let crowdfunding = CrowdFunding {
            campaigns: vector::empty(),
            number_of_campaigns: 0,
        };
        move_to(account, crowdfunding);
    }
}
