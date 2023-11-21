// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Distribute {
    address[6] public contributors;
    uint256 public immutable createTime;
    uint256 public immutable amount;
    address payable public immutable contributor1;
    address payable public immutable contributor2;
    address payable public immutable contributor3;
    address payable public immutable contributor4;
    address payable public immutable contributor5;
    address payable public immutable contributor6;

    error CannotDistribute();

    constructor(address[6] memory _contributors) payable {
        createTime = block.timestamp;
        contributor1 = payable(_contributors[0]);
        contributor2 = payable(_contributors[1]);
        contributor3 = payable(_contributors[2]);
        contributor4 = payable(_contributors[3]);
        contributor5 = payable(_contributors[4]);
        contributor6 = payable(_contributors[5]);
        amount = msg.value / 6;
    }

    function distribute() external {
        if(!(block.timestamp > createTime + 2 weeks)) {
            revert CannotDistribute();
        }

        contributor1.send(amount);
        contributor2.send(amount);
        contributor3.send(amount);
        contributor4.send(amount);
        contributor5.send(amount);
        contributor6.send(amount);

    }
}