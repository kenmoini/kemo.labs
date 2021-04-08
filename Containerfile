FROM registry.access.redhat.com/ubi8/minimal:latest as BUILDER

WORKDIR /builder-root
COPY . .
RUN git submodule update --init \
 && ./bin/hugo

FROM registry.access.redhat.com/ubi8/nginx-118:latest

COPY --from=builder /builder-root/public /var/www/html
# Run script uses standard ways to run the application
CMD nginx -g "daemon off;"