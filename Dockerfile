# Use the official, optimized Eclipse Mosquitto production image
FROM eclipse-mosquitto:latest

# Copy your local custom rules directly into the container's active config path
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Expose network port 1883 out to the host framework
EXPOSE 1883