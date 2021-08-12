# How to Kind

## What is Kind?

**kind** is a tool for running local Kubernetes clusters using Docker container “nodes”.
**kind** was primarily designed for testing Kubernetes itself, but may be used for local development or CI.

**Checkout:https://kind.sigs.k8s.io/**

Let's go:

<pre><font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>~</b></font>$ exit
logout
Connection to 127.0.0.1 closed.
(base) <font color="#8AE234"><b>bayram@ghazal</b></font>:<font color="#729FCF"><b>~/VagrantUp/ubuntu-docker</b></font>$ vagrant ssh
Welcome to Ubuntu 20.04.2 LTS (GNU/Linux 5.4.0-58-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

 System information disabled due to load higher than 2.0


This system is built by the Bento project by Chef Software
More information can be found at https://github.com/chef/bento
Last login: Thu Aug 12 11:34:50 2021 from 10.0.2.2
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>~</b></font>$ kind create cluster --name my-cluster
Creating cluster &quot;my-cluster&quot; ...
 <font color="#4E9A06">✓</font> Ensuring node image (kindest/node:v1.21.1) 🖼
 <font color="#4E9A06">✓</font> Preparing nodes 📦  
 <font color="#4E9A06">✓</font> Writing configuration 📜 
 <font color="#4E9A06">✓</font> Starting control-plane 🕹️ 
 <font color="#4E9A06">✓</font> Installing CNI 🔌 
 <font color="#4E9A06">✓</font> Installing StorageClass 💾 
Set kubectl context to &quot;kind-my-cluster&quot;
You can now use your cluster with:

kubectl cluster-info --context kind-my-cluster

Have a question, bug, or feature request? Let us know! https://kind.sigs.k8s.io/#community 🙂
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>~</b></font>$ docker container ls
CONTAINER ID   IMAGE                  COMMAND                  CREATED              STATUS              PORTS                       NAMES
a0be09815d6c   kindest/node:v1.21.1   &quot;/usr/local/bin/entr…&quot;   About a minute ago   Up About a minute   127.0.0.1:41563-&gt;6443/tcp   my-cluster-control-plane
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>~</b></font>$ kubectl get nodes
NAME                       STATUS   ROLES                  AGE   VERSION
my-cluster-control-plane   Ready    control-plane,master   47s   v1.21.1
</pre>

<pre><font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>~</b></font>$ kind load --help
Loads images into node from an archive or image on host

Usage:
  kind load [flags]
  kind load [command]

Available Commands:
  docker-image  Loads docker images from host into nodes
  image-archive Loads docker image from archive into nodes

Flags:
  -h, --help   help for load

Global Flags:
      --loglevel string   DEPRECATED: see -v instead
  -q, --quiet             silence all stderr output
  -v, --verbosity int32   info log verbosity

Use &quot;kind load [command] --help&quot; for more information about a command.
</pre>

<pre><font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>~</b></font>$ Lets create another a 2nd cluster locally</pre>

<pre><font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>~</b></font>$ kind create cluster --name my-2nd-cluster
Creating cluster &quot;my-2nd-cluster&quot; ...
 <font color="#4E9A06">✓</font> Ensuring node image (kindest/node:v1.21.1) 🖼
 <font color="#4E9A06">✓</font> Preparing nodes 📦  
 <font color="#4E9A06">✓</font> Writing configuration 📜 
 <font color="#4E9A06">✓</font> Starting control-plane 🕹️ 
 <font color="#4E9A06">✓</font> Installing CNI 🔌 
 <font color="#4E9A06">✓</font> Installing StorageClass 💾 
Set kubectl context to &quot;kind-my-2nd-cluster&quot;
You can now use your cluster with:

kubectl cluster-info --context kind-my-2nd-cluster

Have a question, bug, or feature request? Let us know! https://kind.sigs.k8s.io/#community 🙂
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>~</b></font>$ kind get clusters
my-2nd-cluster
my-cluster
</pre>


<pre><font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>~</b></font>$ Lets delete the 2nd cluster</pre>

<pre><font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>~</b></font>$ kind delete cluster --name my-2nd-cluster
Deleting cluster &quot;my-2nd-cluster&quot; ...
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>~</b></font>$ kind get clusters
my-cluster
</pre>
