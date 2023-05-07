# HexCorp Moderation Interface

This is a fork of [Dragory's Modmailbot for Discord](https://github.com/Dragory/modmailbot),
slightly customized for the HexCorp server.

## Requirements

- Node 20

## Building and deploying with Docker

### Building

The configuration file isn't pushed to the repo, since it contains sensitive
information such as server IDs, and especially the bot token. Create a
configuration file called `config.ini`, add it to the project directory,
then build the Docker image with:

``` bash
docker image build --tag mod_interface:latest .
```

### Running

Logs of all chats are saved in an SQLite database. To ensure that these
logs are persisted when the container is shut down for any reason, we are
attaching in the database from outside of the Docker image. This also enables
easier inspection of the database.

To run the image, use the following command:

``` bash
docker run \
    --name ModerationInterface \
    --detach \
    --restart always \
    --volume ./modmailbot-db/:/var/opt/HexCorpModerationInterface/db/\
    -P\
    mod_interface:latest
```

## Building and running with system Node

As mentioned before, create `config.ini`, and add it to the current working
directory. Then, run the following command in project root:

```bash
npm ci && npm start
```
