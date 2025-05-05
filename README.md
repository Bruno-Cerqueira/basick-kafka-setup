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
   docker run -p 9092:9092 apache/kafka-native:4.0.0
    ```
