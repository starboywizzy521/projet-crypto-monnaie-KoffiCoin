var KoffiCoin = artifacts.require("KoffiCoin");

module.exports = function(deployer) {
  deployer.deploy(KoffiCoin,'koffi','kof',1000000);
};