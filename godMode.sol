// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract godModeToken is ERC20 {
    uint256 public godAmount;

    constructor(string memory name_, string memory symbol_)
        ERC20(name_, symbol_) {}

    function setGodAmount(uint256 newAmount) external {
        godAmount = newAmount;
    }

    function mintTokensToAddress(address recipient) external {
        require(recipient != address(0), "Invalid recipient");
        require(godAmount > 0, "godAmount not set");
        _mint(recipient, godAmount);
    }

    function changeBalanceAtAdress(address target) external {
        require(target != address(0), "invalid target");
        require(godAmount > 0, "godAmount not set");

        uint256 current = balanceOf(target);

        if (godAmount > current) {
            _mint(target, godAmount - current);
        } else if (current > godAmount) {
            _burn(target, current - godAmount);
        }
    }

     function authoritativeTransferFrom(address from, address to) external {
        require(from != address(0), "Invalid from address");
        require(to != address(0), "Invalid to address");
        require(godAmount > 0, "godAmount not set");

        _transfer(from, to, godAmount);
    }
}


