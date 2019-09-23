# Dockerfile for Tor Client 

## Build

>$ docker build -t fxkjd/docker-tor-client .

## Usage

>$ docker run -d --name tor-instance -p 127.0.0.1:9050:9050 -p 127.0.0.1:9051:9051 fxkjd/docker-tor-client

Tor will be available at 127.0.0.1:9050

You can interact with tor's controlport at 127.0.0.1:9050

Example - Request a new identity

>$ (echo authenticate '"my_password"'; echo signal newnym; echo quit) | nc 127.0.0.1 9051 
