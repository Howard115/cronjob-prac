from datetime import datetime

with open('/var/log/cron.log', 'a') as f:
    f.write(f"Python script executed at: {datetime.now()}\n") 