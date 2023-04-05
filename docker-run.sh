docker build -t transnet -f inference/Dockerfile .
docker run --gpus all -it --ipc=host --rm --net=host -v /home/synopsis/:/home/synopsis -v /mnt/Data/:/mnt/Data -v /mnt/DataSSD/:/mnt/DataSSD/ transnet
