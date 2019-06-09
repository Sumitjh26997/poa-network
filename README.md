# poa-network setup using parity
- edit the base path in the .toml file accordingly
- run setup.sh with name of the node as parameter e.g. ./setup.sh hospital
- run parity --config (name of node).toml&
- run curl --data '{"jsonrpc":"2.0","method":"parity_newAccountFromPhrase","params":["(name of parameter)", "(name of parameter"],"id":0}' -H "Content-Type: application/json" -X POST localhost:8540 on both nodes.
- create user accounts using :
curl --data '{"jsonrpc":"2.0","method":"parity_newAccountFromPhrase","params":["user", "user"],"id":0}' -H "Content-Type: application/json" -X POST localhost:8540
- add addresses obtained in step 3 to chain_spec.json under validators on both nodes.
- run both nodes.
   - enter following command on one node : 
    curl --data '{"jsonrpc":"2.0","method":"parity_enode","params":[],"id":0}' -H "Content-Type: application/json" -X POST  localhost:8540
    - run following on another node replacing enode://result with result from above command: 
    curl --data '{"jsonrpc":"2.0","method":"parity_addReservedPeer","params":["enode://RESULT"],"id":0}' -H "Content-Type: application/json" -X POST localhost:8540
- test transactions.
  - send value:
    curl --data '{"jsonrpc":"2.0","method":"personal_sendTransaction","params":[{"from":"0x004ec07d2329997267Ec62b4166639513386F32E","to":"0x00Bd138aBD70e2F00903268F3Db08f2D25677C9e","value":"0xde0b6b3a7640000"}, "user"],"id":0}' -H "Content-Type: application/json" -X POST localhost:8540
   - check balance:
  curl --data '{"jsonrpc":"2.0","method":"eth_getBalance","params":["0x00Bd138aBD70e2F00903268F3Db08f2D25677C9e", "latest"],"id":1}' -H "Content-Type: application/json" -X POST localhost:8540




