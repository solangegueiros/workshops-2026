// SPDX-License-Identifier: MIT
pragma solidity 0.8.34;

contract RegisterLog {
    string private storedInfo;

    event InfoChange(string oldInfo, string newInfo);

    function setInfo(string memory myInfo) public {
        emit InfoChange (storedInfo, myInfo);
        storedInfo = myInfo;
    }

    function getInfo() public view returns (string memory) {
        return storedInfo;
    }
    
}