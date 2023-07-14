$container = docker ps -aq --filter 'name=karizma'

if ($container) {
  # Container exists, stop and remove it
  docker stop $container
  docker rm $container
}

# Load Docker image from file
docker load -i C:\Users\comet\Desktop\karizma.tar
