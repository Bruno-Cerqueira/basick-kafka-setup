# Ruby & Spring Java Microservices with Kafka – Docker Compose Setup

This project demonstrates a basic microservices architecture with two applications:

- **Ruby App** (Producer): Sends messages to a Kafka topic.
- **Spring Boot App** (Consumer): Listens to the Kafka topic and processes messages.

All components are containerized and orchestrated using Docker Compose.

---

## 📦 Project Structure

```
├─ docker-compose.yml
├─ ruby-app/
│ ├── Dockerfile
│ ├── Gemfile
│ ├── ...
└── java-app/
│ ├── Dockerfile
│ ├── pom.xml
│ ├── ...
└── ...
```

---

## 🚀 Getting Started

### Prerequisites

- [Docker](https://www.docker.com/products/docker-desktop)
- [Docker Compose](https://docs.docker.com/compose/)

---

### 🔧 How to Run

1. **Clone the repository**

   ```
   git clone https://github.com/Bruno-Cerqueira/basic-kafka-setup.git
   cd basic-kafka-setup
   ```
2. **Start docker compose**

    ```
   docker compose up
    ```

3. **Start specific container**
- Kafka server
    ```
   docker run --name kafka-test -p 9092:9092 apache/kafka-native:4.0.0
    ```
4. **Ruby project**
- Install dependencies
    ```
    bundle install
    ```
- Karafka server - listening consumers
    ```
   bundle exec karafka server
    ```
5. **CLI commands to kafka (with example topic)**
- Create example topic to server
    ```
    kafka-topics.sh --create --topic example --bootstrap-server localhost:9092
    ```
- Send messages to topic using producer sh
    ```
    kafka-console-producer.sh --topic example --bootstrap-server localhost:9092
    ```
    only using data as json
    ```json
    {"event": "signup", "user_id": 123}
    ```



# Temporal information

- It is only working with: 
    kafka docker running with -> docker run --name kafka-test-1 -p 9092:9092 my-kafka
    Execute topic kafka-console-producer.sh --bootstrap-server localhost:9092 --topic example
    Up karafka -> bundle exec karafka server