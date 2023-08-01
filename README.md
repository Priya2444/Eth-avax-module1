# Eth-avax-module1
**Error Handlers**

In the `mod1avaxNew` contract, several error handlers are used to ensure the proper functioning and safety of the smart contract. Let's explain each error handler used in the contract:

1. **require**: The `require` statement is a common error handler used in Solidity contracts to enforce certain conditions before executing the rest of the function. If the condition inside `require` evaluates to `false`, the function will immediately revert, undoing any state changes made before the error occurred. In the `mod1avaxNew` contract, `require` is used to check the validity of the input `num`.

   Example:
   ```solidity
   require(num > 0, "Value must be greater than 0");
   ```

2. **assert**: The `assert` statement checks for conditions that should never occur unless there is a bug in the contract. It is used to validate internal consistency and state correctness. If the condition inside `assert` evaluates to `false`, the transaction will be reverted, indicating a serious issue in the contract's logic. In the `mod1avaxNew` contract, `assert` is used to ensure that the input `num` is divisible by 7.

   Example:
   ```solidity
   assert(num % 7 == 0);
   ```

3. **revert**: The `revert` statement is used to trigger a transaction rollback and revert any state changes, but with the ability to provide a custom error message. It is typically used to indicate specific conditions that can cause the function to fail without indicating a bug in the contract's logic. In the `mod1avaxNew` contract, the `revert` statement is used to handle the scenario when the input `num` is less than or equal to 20.

   Example:
   ```solidity
   if (num <= 20) {
       revert("Value is smaller than 20");
   }
   ```

These error handlers are essential for ensuring that the contract behaves as intended and that invalid or unexpected inputs are handled appropriately. They help prevent unintended behavior and protect against potential security vulnerabilities. When interacting with the contract, it is important to pay attention to the error messages provided by these handlers to understand why a transaction may have failed and take necessary corrective actions. Additionally, error handling can be valuable for debugging and identifying issues during development and testing phases. Always use descriptive error messages to provide useful feedback to users and other developers interacting with the contract.
