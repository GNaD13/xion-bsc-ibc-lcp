require("@nomicfoundation/hardhat-toolbox");
require("@openzeppelin/hardhat-upgrades");

/**
 * @type import('hardhat/config').HardhatUserConfig
 */
module.exports = {
  solidity: {
    version: "0.8.28",
    settings: {
      evmVersion: "cancun",
      optimizer: {
        enabled: true,
        runs: 9_999_999
      }
    },
  },
  networks: {
    eth_local: {
      url: 'http://bsc-rpc:8545',
      accounts: {
        mnemonic: "math razor capable expose worth grape metal sunset metal sudden usage scheme",
        path: "m/44'/60'/0'/0"
      },
    }
  }
}
