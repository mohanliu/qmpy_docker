# qmpy_docker

## Create qmpy image 
  - `export DOCKERID=oqmduser`
  - `docker build -t $DOCKERID/qmpy .`
  
## Pull mysql 5.7 images
  - `docker pull mysql/mysql-server:5.7`

## Use Docker to launch qmpy
  - qmpy environment
    - `docker run -it --rm $DOCKERID/qmpy`
  - Overwrite entrypoint 
    - `docker run -it --rm --entrypoint "/bin/bash" $DOCKERID/qmpy`
