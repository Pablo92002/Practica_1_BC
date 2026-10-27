// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

// Token ERC-20 con quemado y acuñación restringida al propietario
contract BCToken is ERC20, ERC20Burnable, Ownable {

    constructor(address initialOwner)
        ERC20("BC Token", "BCT")
        Ownable(initialOwner)
    {
        _mint(initialOwner, 1000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }
}
