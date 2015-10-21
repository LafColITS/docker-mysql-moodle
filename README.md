## Quick start

This image supplies a MySQL build customized to support Moodle. It is derived from `quay.io/sameersbn/mysql`.

## Building

- Clone this repository
- Build the image: `docker build -t "lafayette/mysql-moodle" .`

## Service

This image can be used as a service (linked container) with Gitlab CI. To do so, first register a new gitlab runner. Do not register a service at this time.

In `/etc/gitlab-runner/config.toml` on the docker host, add the service to the runner:

```
[[runners]]
  name = "<name>"
  url = "<gitlab ci url>"
  token = "<token>"
  limit = 1
  executor = "docker"
  [runners.docker]
    image = "<php/moodle image>"
    privileged = false
    volumes = ["/cache"]
    services = ["lafayette/mysql-moodle:latest"]
```

The service can be accessed at the hostname `lafayette__mysql-moodle`.