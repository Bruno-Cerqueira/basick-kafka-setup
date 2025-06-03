# Use the official Kafka native image as base
FROM apache/kafka-native:4.0.0

# Set working directory
WORKDIR /opt/kafka

# Optional: copy configuration overrides or scripts
# COPY custom-config/kraft.properties ./config/kraft.properties

# Optional: expose the port (already exposed by base image)
EXPOSE 9092

# Optional: change or add default command (not required if using as-is)
CMD ["start-kafka.sh"]
