# Check the total amount in the wallet.
if ! bitcoin-cli -regtest listwallets | grep -q "builderswallet"; then
    bitcoin-cli -regtest createwallet "builderswallet" > /dev/null
fi
bitcoin-cli -regtest loadwallet "builderswallet" > /dev/null 2>&1 || true
ADDRESS=$(bitcoin-cli -regtest getnewaddress)
bitcoin-cli -regtest generatetoaddress 101 "$ADDRESS" > /dev/null 2>&1
bitcoin-cli -regtest getbalance