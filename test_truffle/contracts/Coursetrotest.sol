pragma solidity >=0.4.21 <0.7.0;

contract Coursetrotest {
    
   string fName;
   uint age;
   
   function setInstructor(string memory _fName, uint _age) public {
       fName = _fName;
       age = _age;
   }
   
   function getInstructor() public view returns (string memory, uint) {
       return (fName, age);
   }
    
}