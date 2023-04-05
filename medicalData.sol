// SPDX-License-Identifier: GPL-3.0

pragma solidity =0.8.18;

contract Data {
    mapping(address => string[]) dataList;

    function add(address _data, string memory url) external {
        dataList[_data].push(url);
    }

    function displayData(
        address _data
    ) external view returns (string[] memory) {
        return dataList[_data];
    }
}
