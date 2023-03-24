# make network and attach it to container

1. docker network create my-bridge-network
2. docker container run --detach --name webhost --network my-bridge-network nginx
3. docker network connect my-bridge-network webhost
4. docker network disconnect my-bridge-network webhost