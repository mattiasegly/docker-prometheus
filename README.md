# docker-arm32v6-prometheus
Raspberry Pi Docker Container for Prometheus<BR>
Work in progress, trying to create simple Prometheus container.

Run with:<BR>
docker run -d \\\
-p 9090:9090 \\\
--mount type=bind,src=/some/path,dst=/prometheus/data \\\
mattiasegly/arm32v6-haproxy

I know nothing about code, so assume that everything here sets the world on fire.<BR>
Use at your own peril.
