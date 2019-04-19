FROM arm32v6/alpine:latest AS builder

ARG OS=linux
ARG ARCH=armv6
ARG RELEASE=2.9.1

RUN apk add --no-cache curl && \
	curl -LJ https://github.com/prometheus/prometheus/releases/download/v$RELEASE/prometheus-$RELEASE.$OS-$ARCH.tar.gz -o prometheus.tar.gz && \
	mkdir /extract && \
	tar -xzf prometheus.tar.gz -C /extract --strip-components=1

FROM arm32v6/alpine:latest

COPY --from=builder /extract /prometheus

VOLUME /prometheus/data
EXPOSE 9090

#ENTRYPOINT ["entrypoint.sh"]
CMD ["/prometheus/prometheus", "--config.file=/prometheus/prometheus.yml", "--storage.tsdb.path=/prometheus/data"]
