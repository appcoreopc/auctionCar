pragma solidity ^0.5.16;

contract AuctionCar {

  // setting up beneficiary 
  address payable public beneficiary;
  uint public auctionEndTime;
 
  // 
  address public highestBidder; 
  uint public highestPrice; 

  mapping(address => uint) pendingReturns;

  bool bidEnded; 

  event NewHighBid(address bidder, uint amount);
  event BidEnded(address winner, uint amount);

  constructor(
    uint _biddingTimeInterval, 
    address payable _beneficiary) public 
  {
     auctionEndTime = now + _biddingTimeInterval;
     beneficiary = _beneficiary;
  }

  function bid() public payable {

  }

}