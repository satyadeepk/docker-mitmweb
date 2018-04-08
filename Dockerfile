FROM python:3.6.5-alpine3.7

# Expose ports
#   - 8080: Default mitmproxy port
#   - 8081: Default mitmweb port
EXPOSE 8080
EXPOSE 8081

RUN apk add --no-cache build-base libffi-dev openssl-dev
RUN pip install https://github.com/mitmproxy/mitmproxy/archive/v3.0.4.tar.gz

# Location of the default mitmproxy CA files
VOLUME [ "/ca" ]

ENTRYPOINT [ "/usr/local/bin/mitmweb", "--set", "cadir=/ca", "--web-iface", "0.0.0.0" ]