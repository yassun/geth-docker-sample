# geth-docker-sample

## usage

```
$ docker-compose build
$ docker-compose up
$ docker exec -i -t gethdockersample_geth_1 /bin/bash
```

## attach

```
root@782ad6f7e089:/# geth attach ipc://eth_private_net/geth.ipc
```

## create account

```
> personal.newAccount('testuser1')
```

## get balance

```
> eth.getBalance(eth.accounts[0])
```

## mining

```
miner.start()
miner.stop()
```

## sendTransaction

```
eth.sendTransaction({from: eth.accounts[0], to: eth.accounts[1], value: web3.toWei(1, "ether")})
```


