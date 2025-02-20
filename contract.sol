
pragma solidity ^0.8.0;

contract TransactionReceipts {
    struct Receipt {
        uint256 id;
        address sender;
        address receiver;
        uint256 amount;
        uint256 timestamp;
    }

    uint256 private receiptCounter;
    mapping(uint256 => Receipt) private receipts;
    
    event ReceiptIssued(uint256 indexed id, address indexed sender, address indexed receiver, uint256 amount, uint256 timestamp);

    function issueReceipt(address _receiver, uint256 _amount) public {
        receiptCounter++;
        receipts[receiptCounter] = Receipt(receiptCounter, msg.sender, _receiver, _amount, block.timestamp);
        emit ReceiptIssued(receiptCounter, msg.sender, _receiver, _amount, block.timestamp);
    }

    function getReceipt(uint256 _id) public view returns (uint256, address, address, uint256, uint256) {
        require(_id > 0 && _id <= receiptCounter, "Invalid receipt ID");
        Receipt memory receipt = receipts[_id];
        return (receipt.id, receipt.sender, receipt.receiver, receipt.amount, receipt.timestamp);
    }
}
