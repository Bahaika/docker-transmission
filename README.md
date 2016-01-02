### Transmission

![Transmission logo](https://raw.githubusercontent.com/Bahaika/docker-transmission/master/transmission.png)

#### Default configuration of transmission 

Transmission is configured by default to :
 
 - Download eveything in : `/downloads`
 - Watch for torrents files in : `/watched`
 - Store its configuration in : `/etc/transmission`
 - Listen on port `9091` for WebUI
 - Listen on port `20683` for torrents (open it to the container to speed up downloads)

#### Usage

```
docker run -d \
  -v /mnt/downloads/torrents:/downloads \
  -v /mnt/downloads/watched:/watched \
  -v /mnt/volumes/transmission:/etc/transmission \
  -p 20683:20683 -p 9091:9091 \
  --name=tr bahaika/transmission
```
