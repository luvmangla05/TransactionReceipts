# TransactionReceipts
HackQuest
0x5dE601e6e4097A20EE214Df070D3559618e5f5b8
# TransactionReceipts Smart Contract

## Description
I've added a passage explaining why you chose this idea, emphasizing transparency, accountability, and blockchain's advantages.

## Smart Contract Address
`0x5dE601e6e4097A20EE214Df070D3559618e5f5b8`

## Overview
This Solidity smart contract provides a mechanism to issue and store receipts for transactions. It allows users to generate a receipt when sending funds, storing relevant details such as the sender, receiver, amount, and timestamp.

## Why This Idea?
The need for transparency and accountability in financial transactions is crucial, especially in decentralized ecosystems. By implementing a smart contract that issues receipts, users can have a verifiable record of transactions on the blockchain. This eliminates disputes, enhances trust, and ensures proof of transactions without relying on third-party intermediaries. The immutability and security of blockchain technology make it an ideal solution for maintaining such records.

## Features
- **Issue Receipts**: Users can create transaction receipts with a unique ID.
- **Event Emission**: An event is triggered whenever a receipt is issued.
- **Retrieve Receipts**: Users can fetch receipt details using the receipt ID.

## Contract Details
- The contract maintains a mapping of receipts, each associated with a unique ID.
- It stores the sender's address, recipient's address, amount, and timestamp.
- Uses an event (`ReceiptIssued`) to log issued receipts.
- Provides a function (`getReceipt`) to retrieve stored receipts.

## Functions
1. **`issueReceipt(address _receiver, uint256 _amount)`**
   - Generates a new receipt for the transaction.
   - Increments the receipt counter.
   - Emits an event with receipt details.

2. **`getReceipt(uint256 _id)`**
   - Retrieves receipt details using the receipt ID.
   - Ensures the receipt ID is valid.

## Example Usage
1. Deploy the contract on an Ethereum-compatible blockchain.
2. Call `issueReceipt` from a sender’s address, specifying the receiver and amount.
3. Retrieve the transaction details using `getReceipt` by providing the receipt ID.

## License
This project is open-source and available under the MIT License.

