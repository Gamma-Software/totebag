# Installation

## Requirements
In order to make the monitoring of the docker logs with promtail you need to install the docker plugin as such:
`docker plugin install grafana/loki-docker-driver:latest --alias loki --grant-all-permissions`\
And check if the plugin is installed:
`docker plugin ls`\
And append the following to the `/etc/docker/daemon.json` file:
```
{
  "debug": true,
  "log-driver": "loki",
  "log-opts": {
      "loki-url": "https://localhost:3100/loki/api/v1/push",
      "loki-batch-size": "400"
  }
}
  ```
## Deployment

Copy the `docker-compose.yml` template into your project folder and start the container.

## Configuration

Visit the Grafana Web Interface `http://localhost:3000`, and login with Grafana's default username and password: `admin`.

*For more info visit:* [Official Grafana Getting started Documentation](https://grafana.com/docs/grafana/latest/getting-started/getting-started/)

# Best-Practices & Post-Installation

## Disable HTTP

It's not secure to expose Grafana via the HTTP protocol. 

### Use a Reverse Proxy

- [ ] Use a Reverse Proxy to securely expose administrative services.

# Additional Referfences

[Official Grafana Documentation](https://grafana.com/docs/grafana/latest/)