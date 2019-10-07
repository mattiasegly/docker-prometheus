# rpi-prometheus
Raspberry Pi Docker Container for Prometheus (work in progress)

Multiarch build using balena's Raspberry Pi image and docker's official Debian image.<BR>
Running with tag :latest should work on all Raspberry Pi models and standard 64-bit hardware. 

Run with:<BR>
docker run -d \\\
-p 9090:9090 \\\
--mount type=bind,src=/some/conf.yml,dst=/prometheus-conf/prometheus.yml \\\
--mount type=bind,src=/some/path,dst=/prometheus-data \\\
mattiasegly/rpi-prometheus:latest

I know nothing about code, so assume that everything here sets the world on fire.<BR>
Use at your own peril.
