// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import { Script } from "forge-std/Script.sol";
import { PoolFactory } from "../src/PoolFactory.sol";
import { TSwapPool } from "../src/TSwapPool.sol";
import { ERC20Mock } from "@openzeppelin/contracts/mocks/token/ERC20Mock.sol";

contract DeployTSwap is Script {
    address public constant WETH_TOKEN_MAINNET = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
    uint256 public constant MAINNET_CHAIN_ID = 1;

    function run() public {
        vm.startBroadcast();
        if (block.chainid == MAINNET_CHAIN_ID) {
            new PoolFactory(WETH_TOKEN_MAINNET);
            // We are are not on mainnet, assume we are testing
        } else {
            ERC20Mock mockWeth = new ERC20Mock();
            new PoolFactory(address(mockWeth));
        }
        vm.stopBroadcast();
    }
}
