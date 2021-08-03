<pre><font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>~</b></font>$ docker version
Client: Docker Engine - Community
 Version:           20.10.7
 API version:       1.41
 Go version:        go1.13.15
 Git commit:        f0df350
 Built:             Wed Jun  2 11:56:38 2021
 OS/Arch:           linux/amd64
 Context:           default
 Experimental:      true

Server: Docker Engine - Community
 Engine:
  Version:          20.10.7
  API version:      1.41 (minimum version 1.12)
  Go version:       go1.13.15
  Git commit:       b0f5bc3
  Built:            Wed Jun  2 11:54:50 2021
  OS/Arch:          linux/amd64
  Experimental:     false
 containerd:
  Version:          1.4.8
  GitCommit:        7eba5930496d9bbe375fdf71603e610ad737d2b2
 runc:
  Version:          1.0.0
  GitCommit:        v1.0.0-0-g84113ee
 docker-init:
  Version:          0.19.0
  GitCommit:        de40ad0
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>~</b></font>$ docker images
REPOSITORY   TAG       IMAGE ID   CREATED   SIZE
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>~</b></font>$ docker info
Client:
 Context:    default
 Debug Mode: false
 Plugins:
  app: Docker App (Docker Inc., v0.9.1-beta3)
  buildx: Build with BuildKit (Docker Inc., v0.5.1-docker)
  scan: Docker Scan (Docker Inc., v0.8.0)

Server:
 Containers: 0
  Running: 0
  Paused: 0
  Stopped: 0
 Images: 0
 Server Version: 20.10.7
 Storage Driver: overlay2
  Backing Filesystem: extfs
  Supports d_type: true
  Native Overlay Diff: true
  userxattr: false
 Logging Driver: json-file
 Cgroup Driver: cgroupfs
 Cgroup Version: 1
 Plugins:
  Volume: local
  Network: bridge host ipvlan macvlan null overlay
  Log: awslogs fluentd gcplogs gelf journald json-file local logentries splunk syslog
 Swarm: inactive
 Runtimes: runc io.containerd.runc.v2 io.containerd.runtime.v1.linux
 Default Runtime: runc
 Init Binary: docker-init
 containerd version: 7eba5930496d9bbe375fdf71603e610ad737d2b2
 runc version: v1.0.0-0-g84113ee
 init version: de40ad0
 Security Options:
  apparmor
  seccomp
   Profile: default
 Kernel Version: 5.4.0-58-generic
 Operating System: Ubuntu 20.04.1 LTS
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 7.717GiB
 Name: Yoshitaka-Zombie
 ID: AZJN:VORJ:Q426:GWWH:FIWZ:OFCX:RVLA:CXZC:LQXS:E6AR:HHWR:N3B2
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Registry: https://index.docker.io/v1/
 Labels:
 Experimental: false
 Insecure Registries:
  127.0.0.0/8
 Live Restore Enabled: false

WARNING: No swap limit support
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>~</b></font>$ cd /var/lib/docker
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>/var/lib/docker</b></font>$ ls
ls: cannot open directory &apos;.&apos;: Permission denied
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>/var/lib/docker</b></font>$ sudo ls
buildkit  containers  image  network  overlay2	plugins  runtimes  swarm  tmp  trust  volumes
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>/var/lib/docker</b></font>$ sudo ls -al
total 52
drwx--x--x 13 root root 4096 Aug  3 14:28 .
drwxr-xr-x 41 root root 4096 Aug  3 10:03 ..
drwx--x--x  4 root root 4096 Jul 28 10:22 buildkit
drwx-----x  2 root root 4096 Jul 28 10:22 containers
drwx------  3 root root 4096 Jul 28 10:22 image
drwxr-x---  3 root root 4096 Jul 28 10:22 network
drwx-----x  3 root root 4096 Aug  3 14:28 overlay2
drwx------  4 root root 4096 Jul 28 10:22 plugins
drwx------  2 root root 4096 Aug  3 14:28 runtimes
drwx------  2 root root 4096 Jul 28 10:22 swarm
drwx------  2 root root 4096 Aug  3 14:28 tmp
drwx------  2 root root 4096 Jul 28 10:22 trust
drwx-----x  2 root root 4096 Aug  3 14:28 volumes
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>/var/lib/docker</b></font>$ cd containers
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>/var/lib/docker/containers</b></font>$ ls
ls: cannot open directory &apos;.&apos;: Permission denied
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>/var/lib/docker/containers</b></font>$ sudo ls
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>/var/lib/docker/containers</b></font>$ docker ps -a
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>/var/lib/docker/containers</b></font>$ ls
ls: cannot open directory &apos;.&apos;: Permission denied
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>/var/lib/docker/containers</b></font>$ sudo ls
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>/var/lib/docker/containers</b></font>$ cd ..
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>/var/lib/docker</b></font>$ sudo ls
buildkit  containers  image  network  overlay2	plugins  runtimes  swarm  tmp  trust  volumes
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>/var/lib/docker</b></font>$ cd image
-bash: cd: image: Permission denied
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>/var/lib/docker</b></font>$ suod cd image
-bash: suod: command not found
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>/var/lib/docker</b></font>$ sudo cd image
sudo: cd: command not found
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>/var/lib/docker</b></font>$ sudo cd image
sudo: cd: command not found
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>/var/lib/docker</b></font>$ ls
ls: cannot open directory &apos;.&apos;: Permission denied
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>/var/lib/docker</b></font>$ sudo su
root@Yoshitaka-Zombie:/var/lib/docker# ls
<font color="#729FCF"><b>buildkit</b></font>  <font color="#729FCF"><b>containers</b></font>  <font color="#729FCF"><b>image</b></font>  <font color="#729FCF"><b>network</b></font>  <font color="#729FCF"><b>overlay2</b></font>  <font color="#729FCF"><b>plugins</b></font>  <font color="#729FCF"><b>runtimes</b></font>  <font color="#729FCF"><b>swarm</b></font>  <font color="#729FCF"><b>tmp</b></font>  <font color="#729FCF"><b>trust</b></font>  <font color="#729FCF"><b>volumes</b></font>
root@Yoshitaka-Zombie:/var/lib/docker# cd image
root@Yoshitaka-Zombie:/var/lib/docker/image# ls
<font color="#729FCF"><b>overlay2</b></font>
root@Yoshitaka-Zombie:/var/lib/docker/image# cd overlay2/
root@Yoshitaka-Zombie:/var/lib/docker/image/overlay2# ls
<font color="#729FCF"><b>distribution</b></font>  <font color="#729FCF"><b>imagedb</b></font>  <font color="#729FCF"><b>layerdb</b></font>  repositories.json
root@Yoshitaka-Zombie:/var/lib/docker/image/overlay2# exit
exit
</pre>
