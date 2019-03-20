# qmpy_docker

## Get qmpy Docker image (either of the following two ways)
- Create qmpy image by yourself
  - `export DOCKERID=oqmduser`
  - `docker build -t $DOCKERID/qmpy .`
  
- Pull pre-built qmpy image
  - `docker pull $DOCKERID/qmpy`

## Use Docker to launch qmpy
  - qmpy environment
    - `docker run -it --rm $DOCKERID/qmpy`
  - qmpy environment with file synchronization
    - `docker run -it --rm -v <some_local_path>:/workspace $DOCKERID/qmpy`
  - Overwrite entrypoint 
    - `docker run -it --rm --entrypoint "/bin/bash" $DOCKERID/qmpy`
