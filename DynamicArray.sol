// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract DynamicArray {
    uint x = 2;
    uint[] a;

    function pushVal(uint value) public {
        a.push(value);
    }

    function getStorageBucket(uint index) public view returns (uint content) {
        assembly {
            content := sload(index)
        }
    }

    function getHashofBucket(uint index) public pure returns (uint hashVal) {
        return uint(keccak256(abi.encode(index)));
    }
}
// At thid index - 80084422859880547211683076133703299733277748156566366325829078699459944778998
// next valuee of array will store and it will be contigeneous
// As Far i know this INDEX VALUE will be the same for a single dynamic array
//INDEX VALUE (80084422859880547211683076133703299733277748156566366325829078699459944778998)
