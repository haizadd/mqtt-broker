FROM eclipse-mosquitto:2-alpine

# Copy configuration and password files
COPY mosquitto.conf /mosquitto/config/mosquitto.conf
COPY password.txt /mosquitto/config/password.txt

EXPOSE 1883