docker build -t cron-i . && docker rm -f cron-c && docker run --name cron-c -v ./cron.log:/var/log/cron.log cron-i
