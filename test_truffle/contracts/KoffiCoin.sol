pragma solidity >=0.4.21 <0.7.0;

contract KoffiCoin{
    
    address owner;
    string name;
    string symbol;
    uint256 totalkoffiCoins;
    
    mapping(address => uint256) public balance;
    
    constructor (string memory _name, string memory _symbol, uint256 _totalkoffiCoins) public {
        owner=msg.sender;
        name=_name;
        symbol=_symbol;
        totalkoffiCoins=_totalkoffiCoins;
        
        balance[owner]=_totalkoffiCoins;
    }
    
    event Transfer(address indexed _from, address indexed _to, uint256 _value);

    function getSymbol() public view returns (string memory){
        return symbol;
    }

    function balanceof(address _owner) view public returns (uint256){
        return balance[_owner];  
    }
    
    function transfer(address _to, uint256 _value) public returns (bool){
        require(balance[msg.sender]> _value);
        
        address _from=msg.sender;
        owner= _to;
        
        balance[_from]-=_value;
        balance[_to]+=_value;
        
        emit Transfer(_from,_to,_value);
        return true;
    }
    
    
    
}