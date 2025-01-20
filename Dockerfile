# Use a base image
FROM ubuntu:24.04

# Install Python and cron
RUN apt update && apt install -y cron python3

# Copy your crontab and Python script
COPY crontab /etc/cron.d/my-cron
COPY script.sh /app/script.sh
COPY show_hello.py /app/show_hello.py
COPY show_time.py /app/show_time.py

# Set permissions
RUN chmod 644 /etc/cron.d/my-cron
RUN chmod +x /app/script.sh
RUN chmod +x /app/show_hello.py
RUN chmod +x /app/show_time.py


ENTRYPOINT cron -f