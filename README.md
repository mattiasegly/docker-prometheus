# docker-prometheus
Raspberry Pi Docker Container for Prometheus<BR>
Work in progress, trying to create simple Prometheus container.

Run with:<BR>
docker run -d \\\
-p 9090:9090 \\\
--mount type=bind,src=/some/conf.yml,dst=/prometheus/prometheus.yml \\\
--mount type=bind,src=/some/path,dst=/prometheus-data \\\
mattiasegly/rpi-prometheus

I know nothing about code, so assume that everything here sets the world on fire.<BR>
Use at your own peril.
