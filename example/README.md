# Example

Follow the [Marid Integration](https://www.opsgenie.com/docs/marid/marid-integration) guide

Edit `etc/marid.conf` or `etc/marid-proxy.conf` accordingly.

## Build

    $ docker-compose build

## Run

    docker-compose up
    #or behind proxy
    docker-compose --file ./docker-compose-proxy.yml up