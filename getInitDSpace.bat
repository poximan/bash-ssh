docker run -d --rm --name cont-tmp img-alpineb
docker cp cont-tmp:/home/.ssh ./img-alpineb/

docker stop cont-tmp
