# Redirecter

This is a web service that redirects incoming HTTP request to equivalent HTTPS requests.  The service can be used as-is, or you can build a docker image.  The official Docker image is [monolit/redirecter](https://hub.docker.com/r/monolit/redirecter).

The service is intended to be put behind a load balancer, which can then use the service to force encrypted connections by directing unencrypted connection to the service, which in turn redirects to an equivalent encrypted connections.  For example, if a client requests `http://example.com/login`, the load balancer can route the request to the redirecter service, which will return a redirect `https://example.com/login` to the client.

The Docker container runs the service runs on port 3001.
