# Vector

This repository is just to set the vector to work as "agent".

## Running Vector locally using docker

```sh
docker pull timberio/vector:0.39.0-debian
```

Update the `~/.zshrc` adding the alias:

```sh
alias vector='docker run --rm -it -v "/var/run/docker.sock":"/var/run/docker.sock" -v "${HOME}/observability-stack/dummy-vector-agent/":/etc/vector/ timberio/vector:0.39.0-debian'
```

We are using the same docker sock as its a only a lab. In production it will be running in a kubernetes cluster reading data from source kubernetes_logs.

Check if vector is installed:

```sh
vector --version
```
