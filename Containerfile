FROM registry.access.redhat.com/ubi8/ubi-minimal:latest as BUILDER

WORKDIR /builder-root
COPY . /builder-root
RUN microdnf install -y git \
 && git submodule update --init \
 && ./bin/hugo

FROM registry.access.redhat.com/ubi8/nginx-118:latest

COPY --from=builder /builder-root/public /opt/app-root/src
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 8080

# Run script uses standard ways to run the application
CMD nginx -g "daemon off;"