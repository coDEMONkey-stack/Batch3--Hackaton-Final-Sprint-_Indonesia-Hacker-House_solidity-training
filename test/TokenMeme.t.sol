// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {TokenMeme} from "../src/TokenMeme.sol";

contract TokenMemeTest is Test {
    TokenMeme public tokenMeme;

    address public bhaktiaji = makeAddr("Bhaktiaji");
    address public ilham = makeAddr("Ilham");

    function setUp() public {
        tokenMeme = new TokenMeme();
    }

    function test_mint() public {
        assertEq(tokenMeme.totalSupply(), 1_000_000_000_000_000e18, "Total Supply tidak 1 Triliun");
    }

    function test_transfer() public {
        // 100 token kepada Ilham
        tokenMeme.transfer(ilham, 100e18);
        assertEq(tokenMeme.balanceOf(ilham), 100e18, "Ilham tidak mendapatkan 100 FFF");
        console.log("Ilham balance", tokenMeme.balanceOf(ilham));

        // 1000 token kepada Bhaktiaji
        tokenMeme.transfer(bhaktiaji, 1000e18);
        assertEq(tokenMeme.balanceOf(bhaktiaji), 1000e18, "Bhaktiaji tidak mendapatkan 1000 FFF");
        console.log("Bhaktiaji balance", tokenMeme.balanceOf(bhaktiaji));
    }
}