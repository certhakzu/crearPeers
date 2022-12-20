#!/bin/bash

echo -n Ingresa Peer Inicial:
read peerInicial
echo -n Ingresa Peer Final:
read peerFinal
echo -n Escriba type:
read type
echo -n Escriba secret:
read secret
echo -n Escriba qualify:
read qualify
echo -n Escriba port:
read port
echo -n Escriba pickupgroup:
read pickupgroup
echo -n Escriba nat:
read nat
echo -n Escriba mailbox:
read mailbox
echo -n Escriba host:
read host
echo -n Escriba dtmfmode:
read dtmfmode
echo -n Escriba context:
read context
echo -n Escriba canreinvite:
read canreinvite
echo -n Escriba callgroup:
read callgroup
echo -n Escriba record:
read record
echo -n Escriba disallow:
read disallow
echo -n Escriba ulaw:
read ulaw
echo -n Escriba alaw:
read alaw
echo -n Escriba g729:
read g729

touch sip_additional.conf

while [ $peerInicial -le $peerFinal ]; do
    echo "[$peerInicial]" >> sip_additional.conf
    echo "username=$peerInicial" >> sip_additional.conf
    echo "type=$type" >> sip_additional.conf
    echo "secret=$secret" >> sip_additional.conf
    echo "qualify=$qualify" >> sip_additional.conf
    echo "port=$port" >> sip_additional.conf
    echo "pickupgroup=$pickupgroup" >> sip_additional.conf
    echo "nat=$nat" >> sip_additional.conf
    echo "mailbox=$mailbox" >> sip_additional.conf
    echo "host=$host" >> sip_additional.conf
    echo "dtmfmode=$dtmfmode" >> sip_additional.conf
    echo "context=$context" >> sip_additional.conf
    echo "canreinvite=$canreinvite" >> sip_additional.conf
    echo "callgroup=$callgroup" >> sip_additional.conf
    echo "callerid=$peerInicial" >> sip_additional.conf
    echo "record=$record" >> sip_additional.conf
    echo "disallow=$disallow" >> sip_additional.conf
    echo "allow=$allow1" >> sip_additional.conf
    echo "allow=$allow2" >> sip_additional.conf
    echo "allow=$allow3" >> sip_additional.conf

    peerInicial=$(($peerFInal+1))
done