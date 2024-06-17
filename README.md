## Commands

- The `make up-cluster` command starts the cluster.
- The `make down` command stops the cluster.


## The following images are used:
- `bitnami/kafka:3.6.1` - Kafka image used to create Kafka brokers in the cluster. This file uses three instances of this image, called kafka-0, kafka-1 and kafka-2.
- `confluentinc/cp-schema-registry:7.6.0` - Schema Registry image used to store and manage data schemas in a Kafka cluster. This image is called schema-registry.
- `provectuslabs/kafka-ui` - Kafka UI image that provides a web interface for managing and monitoring a Kafka cluster. This image is called kafka-ui.

## Ports for Kafka brokers:

- 29092:9092 - port for accessing the kafka-0 broker
- 29192:9092 - port for accessing the kafka-1 broker
- 29292:9092 - port for accessing the kafka-2 broker

## Ports for Kafka KRaft:

- 29093:9093 - port for access to the KRaft controller and kafka-0 broker
- 29193:9093 - port for access to the KRaft controller and kafka-1 broker
- 29293:9093 - port for access to the KRaft controller and kafka-2 broker

## Ports for external access to Kafka:

- 29094:9094 - port for external access to the kafka-0 broker
- 29194:9094 - port for external access to the kafka-1 broker
- 29294:9094 - port for external access to the kafka-2 broker

## Port for Schema Registry:

- 8085:8085 - port for accessing Schema Registry

## Port for Kafka UI:

- 8099:8080 - port for accessing Kafka UI
- Login: `admin`
- Password: `password`