# mitmweb docker image
Alpine based docker image for the mitmproxy web interface mitmweb.

Original work from [johnmccabe/mitmweb-docker](https://github.com/johnmccabe/mitmweb-docker) - forked to update versions and also build for arm.

Get started quickly with defaults allowing docker to map the proxy and web interface ports.

    docker run --name mitmweb -d -P fopina/mitmweb

Or to explictly map the default ports (proxy: 8080, web interface: 8081)

    docker run --name mitmweb -d -p 8080:8080 -p 8081:8081 fopina/mitmweb

You can view all available mitmweb arguments and options as follows

    docker run fopina/mitmweb -h

Refer to the mitmproxy page for details

- https://github.com/mitmproxy/mitmproxy
