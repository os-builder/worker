# os-builder - emerge worker

```
cd ./base 
( rm -rf ./rootfs/* || mkdir ./rootfs )
./rootfs.sh
docker build -t b4rti/gentoo-stage3-amd64 .

cd ../
docker-compose down
docker-compose build
docker-compose up
```
