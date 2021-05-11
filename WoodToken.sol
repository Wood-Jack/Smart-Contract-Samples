
pragma solidity >=0.4.22 <0.9.0;


contract WoodToken{

    string public constant  name= "WoodToken";
    string public constant symbol= "WrJ";
    uint8 public constant decimals= 18;


    uint256 public _totalSupply;
    mapping(address => uint) balances;
    mapping(address => mapping(address => uint )) allowed;


constructor() public {
    _totalSupply= 1000000000;
    balances[msg.sender] = _totalSupply;
    // emit Transfer(address(0), msg.sender, _totalSupply);
}

// This function will return the total supply subtracting balances of an address
function totalSupply() public view returns(uint)
{
    return _totalSupply - balances[address(0)];
}

//function will return the balance of the tokenOwner
function balanceOf(address tokenOwner) public view  returns (uint balance)
{
    return balances[tokenOwner];
}

//Gives the allowance of what is allowed by the tokenOwner and Spender
 function allowance(address tokenOwner, address spender) public view returns(uint remaining){
    return allowed[tokenOwner][spender];
}

// the function will tell us if the spender is authorize or approved to use the token
function approve(address spender, uint tokens) public returns(bool success)
{
    allowed[msg.sender][spender]=tokens;
    // emit Approval(msg.sender,spender,tokens);
    return true;
}


}
