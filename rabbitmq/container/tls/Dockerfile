FROM davidkhala/buildpack AS builder

RUN git clone https://github.com/rabbitmq/tls-gen

WORKDIR /tls-gen/basic
RUN make
RUN make verify
RUN make info
RUN chmod -R 644 /tls-gen/basic/result/

FROM bitnami/rabbitmq
COPY --from=builder /tls-gen/basic/result/ca_key.pem /tls/ca_key.pem
COPY --from=builder /tls-gen/basic/result/ca_certificate.pem /tls/ca_certificate.pem
COPY --from=builder /tls-gen/basic/result/server_buildkitsandbox_certificate.pem /tls/server_certificate.pem
COPY --from=builder /tls-gen/basic/result/server_buildkitsandbox_key.pem /tls/server_key.pem
