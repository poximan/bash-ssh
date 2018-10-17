set DSPACE_VER=dspace-6_x
set DPROJ=d6

cd D:/documentos/hugo/git
git clone https://github.com/DSpace-Labs/DSpace-Docker-Images.git
cd DSpace-Docker-Images/docker-compose-files/dspace-compose
docker-compose -p $DPROJ up -d
