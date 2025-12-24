

build dockerfile
`docker build -t simple-apps .`

running container
`docker run -dit -p 8003:3000 --name ct-simple-apps simple-apps`

hapus container
`docker rm -f ct-simple-apps`