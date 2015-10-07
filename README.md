# docker-private-bower

[private-bower](https://github.com/Hacklone/private-bower) in docker

## run

```
docker run --name private-bower -d -e "ADDRESS=your-domain" -p 5678:5678 -p 6789:6789 -p 7891:7891 -v /srv/private-bower:/private-bower/storage bankiru/private-bower
```


