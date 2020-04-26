# Man Page In Docker

```
docker run -it --rm binc/man-page:0.0.1 man systemd
```
Or, use interactive version:

```
docker run -it binc/man-page:0.0.1 /bin/zsh
```
And, auto-completion works:
```
#man tcp<tab>
tcp  tcpaccept-bpfcc   tcpconnect-bpfcc  tcpconnlat-bpfcc  tcpdump tcplife-bpfcc  tcpretrans-bpfcc  tcptop-bpfcc tcptracer-bpfcc
```

## Most likely you'll want to set the alias
```
alias lman='docker run -it --rm binc/man-page:0.0.1 man'
alias lmani='docker run -it binc/man-page:0.0.1 /bin/zsh'
```
