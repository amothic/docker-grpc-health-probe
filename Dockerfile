FROM alpine as builder

ENV GRPC_HEALTH_PROBE_VERSION v0.3.1

RUN set -ex \
    && apk add --no-cache curl \
    && curl -fSL https://github.com/grpc-ecosystem/grpc-health-probe/releases/download/${GRPC_HEALTH_PROBE_VERSION}/grpc_health_probe-linux-amd64 -o grpc_health_probe \
    && chmod +x grpc_health_probe

FROM scratch
COPY --from=builder /grpc_health_probe /bin/grpc_health_probe
ENTRYPOINT ["/bin/grpc_health_probe"]
