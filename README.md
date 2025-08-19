# sol_study

## remix 环境
- 测试网水龙头：[https://faucets.chain.link/](https://faucets.chain.link/)
- 喂价: [ETH/USD](https://docs.chain.link/data-feeds/getting-started)
- 继承 [ERC-20 合约](https://docs.openzeppelin.com/contracts/5.x/erc20)
  - [代码](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol)
- 链上验证合约：https://sepolia.etherscan.io/
  -  将合约地址输入到搜索框中
  -  点击contract
  -  点击 Verfiy and Publish
  -  选择编译器类型 solidity (single file)
  -  选择编译器版本
  -  选择开源协议 MIT
  -  Enter the solidity contract code below
  -  Flatten 到同一个文件中
  -  然后就可以在线上调试合约了，说明代码是开源的，任何人都可以调试代码
  
## hardhat 环境
### 创建 hardhat 项目
1. mkdir web3_tutorial
2. 安装 nodejs：nvm install 22.10.0
3. 创建 npm 项目：npm init
4. 安装 hardhat ：npm install hardhat --save-dev 或 npm install hardhat@^2.22.2 --save-dev
5. 创建 hardhat 项目：npx hardhat
### 通过 hardhat 编译和部署合约
1. 安装 chainlink 包：npm install @chainlink/contracts --save-dev --registry=https://registry.npmmirror.com
2. 编译合约：npx hardhat compile
3. 部署合约：