// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {TokenMeme} from "../src/TokenMeme.sol";

contract TokenMemeTest is Test {
    TokenMeme public tokenMeme;

    function setUp() public {
        tokenMeme = new TokenMeme();
    }

    function test_mint() public {
        assertEq(tokenMeme.totalSupply(), 1_000_000_000_000_000e18, "Total Supply tidak 1 Triliun");
    }
}