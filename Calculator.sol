// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Calculator {

  //created two number variable for the smart contract
  uint num1;
  uint num2;

  // created a contructor and intliazed both variables to zero
  constructor() public {
    num1= 0;
    num2= 0;
  }

  // this a function created to add the numbers two numbers
  // within the contract and it returns the uint of of it
  function getSum() public returns(uint)
  {
    uint sum = num1 + num2;
    return sum;
  }

  // This a function created to subtract two numbers within the contract
  // it also returns the uint
  function getSubtract() public returns(uint)
  {

    uint subtract = num1 + num2;
    return subtract;
  }

  // This function created gives the multiple of two numbers within the contract
  // it also returns the uint of it 
  function getMutiple() public returns(uint)
  {
    // If either numbers = zero then return the zero
    // because a number times zero will always give you zero
    if(num1 == 0 || num2 == 0)
    {
      return 0;
    }
    else
    {
      uint multiple = num1 * num2;
      return multiple;
    }
  }

  // This function divides two numbers  within the contract
  // also returns the uint 
  function getDivision() public returns(uint)
  {

     // If either numbers = zero then return the zero
    // because a number divide by zero will always give you zero
    if(num1 == 0 || num2 == 0)
    {
      return 0;
    }
    else
    {
      uint divide = num1 / num2;
      return divide;
    }
  }
}
