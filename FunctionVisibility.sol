//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.18;

contract FunctionVisibility {
    uint private x = 1;
    uint internal y = 2;
    uint public z = 3;

    function privateFunc() private pure returns(uint) {
        return 100;
    }

    function internalFunc() internal pure returns(uint) {
     return 200;
    }

    function publicFunc() public pure returns(uint) {
        return 300;
    }

    function externalFunc() external pure returns(uint) {
        return 400;
    }


    function examples() external view {
       x + y + z;

       privateFunc();
       internalFunc();
       publicFunc();

       
    }


}

contract FunctionVisibilityChild is FunctionVisibility {
         function examples2() external view {
         y + z;

         internalFunc();
         publicFunc();

         }
         
    }