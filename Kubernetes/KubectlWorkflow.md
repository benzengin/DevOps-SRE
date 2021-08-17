# How to install Kubectl?

With Curl on Ubuntu (one liner):

<pre><font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>~</b></font>$ curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 44.7M  100 44.7M    0     0  3364k      0  0:00:13  0:00:13 --:--:-- 4959k
</pre>

<pre><font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>~</b></font>$ kubectl version
Client Version: version.Info{Major:&quot;1&quot;, Minor:&quot;21&quot;, GitVersion:&quot;v1.21.3&quot;, GitCommit:&quot;ca643a4d1f7bfe34773c74f79527be4afd95bf39&quot;, GitTreeState:&quot;clean&quot;, BuildDate:&quot;2021-07-15T21:04:39Z&quot;, GoVersion:&quot;go1.16.6&quot;, Compiler:&quot;gc&quot;, Platform:&quot;linux/amd64&quot;}
Server Version: version.Info{Major:&quot;1&quot;, Minor:&quot;21&quot;, GitVersion:&quot;v1.21.1&quot;, GitCommit:&quot;5e58841cce77d4bc13713ad2b91fa0d961e69192&quot;, GitTreeState:&quot;clean&quot;, BuildDate:&quot;2021-05-21T23:01:33Z&quot;, GoVersion:&quot;go1.16.4&quot;, Compiler:&quot;gc&quot;, Platform:&quot;linux/amd64&quot;}
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>~</b></font>$ kubectl --help
kubectl controls the Kubernetes cluster manager.

 Find more information at: https://kubernetes.io/docs/reference/kubectl/overview/

Basic Commands (Beginner):
  create        Create a resource from a file or from stdin.
  expose        Take a replication controller, service, deployment or pod and expose it as a new Kubernetes Service
  run           Run a particular image on the cluster
  set           Set specific features on objects

Basic Commands (Intermediate):
  explain       Documentation of resources
  get           Display one or many resources
  edit          Edit a resource on the server
  delete        Delete resources by filenames, stdin, resources and names, or by resources and label selector

Deploy Commands:
  rollout       Manage the rollout of a resource
  scale         Set a new size for a Deployment, ReplicaSet or Replication Controller
  autoscale     Auto-scale a Deployment, ReplicaSet, StatefulSet, or ReplicationController

Cluster Management Commands:
  certificate   Modify certificate resources.
  cluster-info  Display cluster info
  top           Display Resource (CPU/Memory) usage.
  cordon        Mark node as unschedulable
  uncordon      Mark node as schedulable
  drain         Drain node in preparation for maintenance
  taint         Update the taints on one or more nodes

Troubleshooting and Debugging Commands:
  describe      Show details of a specific resource or group of resources
  logs          Print the logs for a container in a pod
  attach        Attach to a running container
  exec          Execute a command in a container
  port-forward  Forward one or more local ports to a pod
  proxy         Run a proxy to the Kubernetes API server
  cp            Copy files and directories to and from containers.
  auth          Inspect authorization
  debug         Create debugging sessions for troubleshooting workloads and nodes

Advanced Commands:
  diff          Diff live version against would-be applied version
  apply         Apply a configuration to a resource by filename or stdin
  patch         Update field(s) of a resource
  replace       Replace a resource by filename or stdin
  wait          Experimental: Wait for a specific condition on one or many resources.
  kustomize     Build a kustomization target from a directory or URL.

Settings Commands:
  label         Update the labels on a resource
  annotate      Update the annotations on a resource
  completion    Output shell completion code for the specified shell (bash or zsh)

Other Commands:
  api-resources Print the supported API resources on the server
  api-versions  Print the supported API versions on the server, in the form of &quot;group/version&quot;
  config        Modify kubeconfig files
  plugin        Provides utilities for interacting with plugins.
  version       Print the client and server version information

Usage:
  kubectl [flags] [options]

Use &quot;kubectl &lt;command&gt; --help&quot; for more information about a given command.
Use &quot;kubectl options&quot; for a list of global command-line options (applies to all commands).
</pre>



