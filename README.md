# FusionAuth App Dockerfile including the MySQL connector

## Building

### One-time setup

Need to use a docker driver that supports multiple platforms (otherwise buildx fails with `error: multiple platforms feature is currently not supported for docker driver. Please switch to a different driver (eg. "docker buildx create --use")`).

```sh
docker buildx create --use
```

### Building latest

```sh
docker buildx build --push --platform linux/amd64,linux/arm64 --tag scurrilous/fusionauth-app-mysql:latest .
```

### Building a specific version

```sh
docker buildx build --push --platform linux/amd64,linux/arm64 --tag scurrilous/fusionauth-app-mysql:1.48.3 --build-arg fusionauth_version=1.48.3 .
```
