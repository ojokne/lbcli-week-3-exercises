# Create a native segwit address and get the public key from the address.

# create address
address=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress)

# get pubkey
pubkey=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getaddressinfo "$address" | jq -r ".pubkey")

echo $pubkey