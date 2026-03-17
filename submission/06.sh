# Generate a legacy address.
bitcoin-cli -regtest loadwallet "testwallet" 2>/dev/null || bitcoin-cli -regtest createwallet "testwallet" > /dev/null
bitcoin-cli -regtest -rpcwallet="testwallet" getnewaddress "" legacy