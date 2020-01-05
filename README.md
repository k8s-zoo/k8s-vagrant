# k8s Vagrant

[Vagrant](https://www.vagrantup.com/) is an open-source software product for building and maintaining portable virtual 
software development environments, e.g. for VirtualBox, KVM, Hyper-V, Docker, etc.

This configurations will help you to launch the local stack of the Kubernetes cluster for you learning. Here, we use the
[Ansible](https://www.ansible.com/) to configures the nodes.

## Building

Before running any command, do not forgot to install and configure the [virtualbox](https://www.virtualbox.org/),
Ansible, and vagrant. 

```bash 
$ make [TARGET]
```

- `$ make validate`

    This target validate the vagrant template and configurations.

- `$ make create`

    This target launch the virtual machines of kubernetes master and node. There will be single node but you can change
    it into [Vagrantfile](src/Vagrantfile).
    
    ```shell script
      $ vagrant ssh k8s-master
      NAME         STATUS   ROLES    AGE     VERSION
      k8s-master   Ready    master   18m     v1.13.3
      node-1       Ready    <none>   12m     v1.13.3
  
      $ ## Accessing node & master
      $ vagrant ssh k8s-master
      $ vagrant ssh node-1
    ```

- `$ make destroy`

    This target delete the virtual machines.


## Overview

- **Maintainer**: mishalshah92@gmail.com