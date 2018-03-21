## One time setup
* Install [docker-ce](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
* Install [docker-compose](https://docs.docker.com/compose/install/)
* Download the [FlyCapture SDK](https://www.ptgrey.com/flycapture-sdk) and save the tgz in this directory

## To run the demo system
* `xhost +local:root` to give apps inside the container access to your xserver
* `docker-compose up -d` to start the nodes
