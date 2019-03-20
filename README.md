# qmpy_docker

## Get qmpy Docker image
- Create qmpy image by your self
  - `export DOCKERID=oqmduser`
  - `docker build -t $DOCKERID/qmpy .`
  
- Pull pre-built qmpy image
  - `docker pull mervyn1937/qmpy`

## Use Docker to launch qmpy
  - qmpy environment
    - `docker run -it --rm $DOCKERID/qmpy`
  - Overwrite entrypoint 
    - `docker run -it --rm --entrypoint "/bin/bash" $DOCKERID/qmpy`
