# Use a base image
FROM ubuntu:24.04

# Install Python and cron
RUN apt update && apt install -y cron python3

# Copy your crontab and Python script
COPY crontab /etc/cron.d/my-cron
COPY script.sh /app/script.sh

# Set permissions
RUN chmod 644 /etc/cron.d/my-cron
RUN chmod +x /app/script.sh


ENTRYPOINT cron -f