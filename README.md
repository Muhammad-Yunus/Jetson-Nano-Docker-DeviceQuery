# Jetson Nano Docker Device Query

- Clone repo :
```
cd ~
mkdir -p Github
cd Github
git clone https://github.com/Muhammad-Yunus/Jetson-Nano-Docker-DeviceQuery.git
cd ~
```
- Build image :
```
docker build --pull --rm -f "Github/Jetson-Nano-Docker-DeviceQuery/Dockerfile" -t jetson-devicequery:latest "Github/Jetson-Nano-Docker-DeviceQuery"
```
- **Or**, Pull image from Docker Hub :
```
docker pull yunusdev/jetson-devicequery
```
- Run image using NVIDIA container runtime :
```
sudo docker run --rm --net=host --runtime nvidia  jetson-devicequery:latest
```