# os-builder - emerge worker

```
cd base && sudo rm -rf ./rootfs/* && ./rootfs.sh && docker build -t b4rti/gentoo-stage3-amd64 . && docker-compose down && docker-compose build && docker-compose up
```
