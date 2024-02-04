FROM registry.access.redhat.com/ubi8/ubi-minimal:latest as BUILDER

WORKDIR /builder-root
COPY . /builder-root
RUN microdnf install -y git \
 && git submodule update --init \
 && ./bin/hugo

FROM registry.access.redhat.com/ubi8/nginx-120:latest

RUN dnf update -y \
 && dnf clean all \
 && rm -rf /var/cache/dnf

COPY --from=builder /builder-root/public /opt/app-root/src
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 8080
USER 1001

# Run script uses standard ways to run the application
CMD nginx -g "daemon off;"