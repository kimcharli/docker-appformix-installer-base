# docker-appformix-installer-base
Docker image for AppFormix installer base

Ubuntu 16.04 LTS with SSH and Ansible for AppFormix Installer

### Configuration



### Install

```sh
docker pull kimcharli/appformix-installer-base
```

### Running

This is not intended to run itself. But it may be used as below.

Run with the example below.
```sh
docker run --name appformix-installer-base -p 0.0.0.0:2222:22 kimcharli/appformix-installer-base:latest
```

### Credentials

The default `root` password is `contrail123`


