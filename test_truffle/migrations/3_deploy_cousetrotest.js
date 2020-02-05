var Coursetrotest = artifacts.require("Coursetrotest");

module.exports = function(deployer) {
  deployer.deploy(Coursetrotest).then(function(){return Coursetrotest.address;});
};