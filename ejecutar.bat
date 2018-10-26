docker build -t img-alpineb .
docker run --name cont-alpineb img-alpineb
docker start cont-alpineb
docker exec -ti cont-alpineb bash
