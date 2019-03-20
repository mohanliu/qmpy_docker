## Removing Docker images
- List:
    - `docker images -a`
- Remove:
    - `docker rmi <docker_image> <docker_image>`
- Remove all images:
    - `docker rmi $(docker images -a -q)`

## Removeing Containers
- List: 
    - `docker ps -a`
- Remove:
    - `docker rm <ID_or_Name> <ID_or_Name>`
    
## Removing Volumes
- List:
    - `docker volume ls`
- Remove:
    - `docker volume rm <volume_name> <volume_name>`
