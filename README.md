# qmpy_docker

## Get qmpy Docker image 
- Pull pre-built qmpy image (_Recommended_)
  - `docker pull oqmduser/qmpy`
- Create qmpy image by yourself
  - `docker build -t oqmduser/qmpy .`
  
## Use Docker to launch qmpy
  - qmpy environment
    - `docker run -it --rm oqmduser/qmpy`
  - qmpy environment with file synchronization
    - `docker run -it --rm -v <some_local_path>:/workspace oqmduser/qmpy`
  - Overwrite entrypoint 
    - `docker run -it --rm --entrypoint "/bin/bash" oqmduser/qmpy`

## Example usage of _QMPYRester()_
```
from qmpy.rester import qmpy_rester as qr

with qr.QMPYRester() as q:
    kwargs = {‘composition’: ‘include_Fe’,
              ‘band_gap’: ‘<2.0’,
              ‘ntypes’: ‘2’}
    list_of_data = q.get_entries(**kwargs)
```
