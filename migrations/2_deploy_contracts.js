const Med = artifacts.require("MedicalHistory");

module.exports = function (deployer) {
  deployer.deploy(Med);
};