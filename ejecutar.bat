docker build -t img-alpineb .
docker run -ti --name cont-alpineb img-alpineb bash
docker start cont-alpineb
docker exec -ti cont-alpineb bash
