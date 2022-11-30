pragma solidity ^0.6.7;

import "https://github.com/smartcontractkit/chainlink/blob/master/evm-contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";

contract GetPricesFromBSC {

    //state variabile written to the block chain
    AggregatorV3Interface internal priceFeedETH;
    AggregatorV3Interface internal priceFeedBTC;
    AggregatorV3Interface internal priceFeedBNB;

    constructor() public {
        priceFeedETH = AggregatorV3Interface(0x9ef1B8c0E4F7dc8bF5719Ea496883DC6401d5b2e);
        priceFeedBTC = AggregatorV3Interface(0x264990fbd0A4796A3E3d8E37C4d5F87a3aCa5Ebf);
        priceFeedBNB = AggregatorV3Interface(0x0567F2323251f0Aab15c8dFb1967E4e8A7D42aeE);
    }

    //returns the latest price
    function getLatestETHPrice() public view returns (int) {
        (
            uint80 roundID, 
            int price,
            uint startedAt,
            uint timeStamp,
            uint80 answeredInRound
        ) = priceFeedETH.latestRoundData();
        return price;
    }
    
    //returns the latest price
    function getLatestBTCPrice() public view returns (int) {
        (
            uint80 roundID, 
            int price,
            uint startedAt,
            uint timeStamp,
            uint80 answeredInRound
        ) = priceFeedBTC.latestRoundData();
        return price;
    }
    
    //returns the latest price
    function getLatestBNBPrice() public view returns (int) {
        (
            uint80 roundID, 
            int price,
            uint startedAt,
            uint timeStamp,
            uint80 answeredInRound
        ) = priceFeedBNB.latestRoundData();
        return price;
    }

}
