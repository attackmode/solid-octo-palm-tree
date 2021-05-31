# Docker Litecoin 

I have not built the Litecoin project, infact I'm a newbe to using it. I created a 
rudimentary while loop to daemonise the service. Can be built with:

```
docker build -t kraken/litecoin:0.18.1 docker-litecoin
```

Ive also created a Gitlab ci file which runs a trivy scan against the image and generates a vulnerability report.