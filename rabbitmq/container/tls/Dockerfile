FROM davidkhala/buildpack AS builder

RUN git clone https://github.com/rabbitmq/tls-gen

WORKDIR /tls-gen/basic
RUN make
RUN chmod -R 644 /tls-gen/basic/result/
RUN wget -P /tls-gen/basic/result/ https://raw.githubusercontent.com/davidkhala/mq/refs/heads/main/rabbitmq/tls/rabbitmq.conf

FROM rabbitmq
COPY --from=builder /tls-gen/basic/result/ca_certificate.pem /etc/rabbitmq/ssl/ca_certificate.pem
COPY --from=builder /tls-gen/basic/result/server_buildkitsandbox_certificate.pem /etc/rabbitmq/ssl/server_certificate.pem
COPY --from=builder /tls-gen/basic/result/server_buildkitsandbox_key.pem /etc/rabbitmq/ssl/server_key.pem
COPY --from=builder /tls-gen/basic/result/rabbitmq.conf /etc/rabbitmq/rabbitmq.conf