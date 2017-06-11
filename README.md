# geth-docker-sample

## usage

```
$ docker-compose build
$ docker-compose up
$ docker exec -i -t gethdockersample_geth_1 /bin/bash
```

## attach

```
root@782ad6f7e089:/# geth attach ipc://eth_data/geth.ipc
```

## create account

```
> personal.newAccount('testuser1')
```

## get balance

```
> eth.getBalance(eth.accounts[0])
```


