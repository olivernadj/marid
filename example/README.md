# Example

Follow the [Marid Integration](https://www.opsgenie.com/docs/marid/marid-integration) guide

Edit `etc/marid.conf` or `etc/marid-proxy.conf` accordingly. 
Please note that both `etc/marid-proxy.conf` and `docker-compose-proxy.yml` contains proxy configuration. 

## Build

    $ docker-compose build

## Run

    docker-compose up
    #or behind proxy
    docker-compose --file ./docker-compose-proxy.yml up