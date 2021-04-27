# FZF Demo

<!-- vim-markdown-toc GFM -->

* [Build Docker Image](#build-docker-image)
* [Run and Access Container](#run-and-access-container)

<!-- vim-markdown-toc -->

## Build Docker Image

`docker build . -t fzf-demo`

## Run and Access Container

```
docker run --rm -it --volume $PWD/shared:/root/shared fzf-demo:latest /bin/bash
```

## Acknowledgements

JSON sample taken from [https://dev.maxmind.com/geoip/geoip2/web-services/](https://dev.maxmind.com/geoip/geoip2/web-services/). TOML sample taken from [https://github.com/toml-lang/toml](https://github.com/toml-lang/toml).