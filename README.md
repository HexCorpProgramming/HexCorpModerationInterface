# HexCorp Moderation Interface

This is a fork of [Dragory's Modmailbot for Discord](https://github.com/Dragory/modmailbot),
slightly customized for the HexCorp server.

## Requirements

- Node 20

## Building and deploying with Docker

### Building

To build a Docker image, run:

``` bash
docker image build --tag mod_interface:latest .
```

### Running

The configuration file isn't pushed to the repo, since it contains sensitive
information such as server IDs, and especially the bot token. Create a
configuration file called `config.ini`, add it to the current working
directory, and run the following:

``` bash
docker run \
    --name ModerationInterface \
    --detach \
    --restart always \
    --volume config.ini:/var/opt/HexCorpModerationInterface/config.ini \
    mod_interface:latest
```

## Building and running with system Node

As mentioned before, create `config.ini`, and add it to the current working
directory. Then, run the following command in project root:

```bash
npm ci && npm start
```
