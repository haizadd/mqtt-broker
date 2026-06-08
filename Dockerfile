FROM eclipse-mosquitto:2

# Expose standard MQTT port
EXPOSE 1883

# Copy configuration template
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Use an inline entrypoint script to dynamically generate credentials on boot
ENTRYPOINT ["/bin/sh", "-c", "touch /mosquitto/config/password.txt && mosquitto_passwd -b /mosquitto/config/password.txt \"$MQTT_USER\" \"$MQTT_PASSWORD\" && exec /usr/sbin/mosquitto -c /mosquitto/config/mosquitto.conf"]