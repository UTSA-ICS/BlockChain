It is recommended to execute the following commands in a screen session:

screen  
# If screen window prompts you, press enter, otherwise you'll see another terminal
cd ~/fabric-dev-servers
export FABRIC_VERSION=hlfv12
./startFabric.sh

ctrl+a then press:  d  to detach.
# To re-attach, type: screen -r


###################
Start a clean Hyperledger Fabric by running the following commands:
cd ~/fabric-dev-servers
export FABRIC_VERSION=hlfv12
./stopFabric.sh
./teardownFabric.sh
./downloadFabric.sh
./startFabric.sh

Delete any business network cards that may exist in your wallet. It is safe to ignore any errors that state that the business network cards cannot be found:
composer card delete -c PeerAdmin@fabric-network
composer card delete -c admin@tutorial-network


If these commands fail, then you have network cards from a previous version and you will have to delete the file system card store:
rm -fr ~/.composer

###################

Resources:
https://hyperledger.github.io/composer/latest/tutorials/deploy-to-fabric-single-org.html
