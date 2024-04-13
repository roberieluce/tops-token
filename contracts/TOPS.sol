// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/AccessControlEnumerable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TOPS is ERC20, AccessControlEnumerable {
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    constructor() ERC20("TOPS TOKEN", "TOPS") {
        uint256 initialSupply = 1000000000 * 10 ** decimals();
        _mint(_msgSender(), initialSupply);

        _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());
    }

    function decimals() public view virtual override returns (uint8) {
        return 18;
    }

}