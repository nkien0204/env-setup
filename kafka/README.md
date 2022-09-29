# Setup Kafka by Docker
We will use **Apache Kafka packaged by Bitnami**, so for more information: [bitnami/kafka docs](https://hub.docker.com/r/bitnami/kafka)
### Services
- **ZooKeeper**: tracking status of the Kafka cluster
- **Kafka**: a message broker for microservice system
- **KafkaUI**: a frontend web for Kafka
### How to run
To connect your app from outside of these containers, you need to replace the *external ip address* in `KAFKA_CFG_ADVERTISED_LISTENERS` variable. And run:
```bash
docker compose up
#or
docker compose up -d #for running in daemon mode
```
Now let your app connect to port `29092` in the Docker machine!