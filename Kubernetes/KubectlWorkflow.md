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

# Getting information about a Cluster:

## Cluster information

<pre><font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>~</b></font>$ kubectl version --short
Client Version: v1.21.3
Server Version: v1.21.1
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>~</b></font>$ kubectl cluster-info
<font color="#4E9A06">Kubernetes control plane</font> is running at <font color="#C4A000">https://127.0.0.1:33039</font>
<font color="#4E9A06">CoreDNS</font> is running at <font color="#C4A000">https://127.0.0.1:33039/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy</font>

To further debug and diagnose cluster problems, use &apos;kubectl cluster-info dump&apos;.
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>~</b></font>$ kubectl get nodes
NAME                            STATUS   ROLES                  AGE   VERSION
k8s-playground-control-plane    Ready    control-plane,master   5d    v1.21.1
k8s-playground-control-plane2   Ready    control-plane,master   5d    v1.21.1
k8s-playground-control-plane3   Ready    control-plane,master   5d    v1.21.1
k8s-playground-worker           Ready    &lt;none&gt;                 5d    v1.21.1
k8s-playground-worker2          Ready    &lt;none&gt;                 5d    v1.21.1
k8s-playground-worker3          Ready    &lt;none&gt;                 5d    v1.21.1
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>~</b></font>$ kubectl api-versions
admissionregistration.k8s.io/v1
admissionregistration.k8s.io/v1beta1
apiextensions.k8s.io/v1
apiextensions.k8s.io/v1beta1
apiregistration.k8s.io/v1
apiregistration.k8s.io/v1beta1
apps/v1
authentication.k8s.io/v1
authentication.k8s.io/v1beta1
authorization.k8s.io/v1
authorization.k8s.io/v1beta1
autoscaling/v1
autoscaling/v2beta1
autoscaling/v2beta2
batch/v1
batch/v1beta1
certificates.k8s.io/v1
certificates.k8s.io/v1beta1
coordination.k8s.io/v1
coordination.k8s.io/v1beta1
discovery.k8s.io/v1
discovery.k8s.io/v1beta1
events.k8s.io/v1
events.k8s.io/v1beta1
extensions/v1beta1
flowcontrol.apiserver.k8s.io/v1beta1
networking.k8s.io/v1
networking.k8s.io/v1beta1
node.k8s.io/v1
node.k8s.io/v1beta1
policy/v1
policy/v1beta1
rbac.authorization.k8s.io/v1
rbac.authorization.k8s.io/v1beta1
scheduling.k8s.io/v1
scheduling.k8s.io/v1beta1
storage.k8s.io/v1
storage.k8s.io/v1beta1
v1
<font color="#8AE234"><b>vagrant@Yoshitaka-Zombie</b></font>:<font color="#729FCF"><b>~</b></font>$ kubectl api-resources
NAME                              SHORTNAMES   APIVERSION                             NAMESPACED   KIND
bindings                                       v1                                     true         Binding
componentstatuses                 cs           v1                                     false        ComponentStatus
configmaps                        cm           v1                                     true         ConfigMap
endpoints                         ep           v1                                     true         Endpoints
events                            ev           v1                                     true         Event
limitranges                       limits       v1                                     true         LimitRange
namespaces                        ns           v1                                     false        Namespace
nodes                             no           v1                                     false        Node
persistentvolumeclaims            pvc          v1                                     true         PersistentVolumeClaim
persistentvolumes                 pv           v1                                     false        PersistentVolume
pods                              po           v1                                     true         Pod
podtemplates                                   v1                                     true         PodTemplate
replicationcontrollers            rc           v1                                     true         ReplicationController
resourcequotas                    quota        v1                                     true         ResourceQuota
secrets                                        v1                                     true         Secret
serviceaccounts                   sa           v1                                     true         ServiceAccount
services                          svc          v1                                     true         Service
mutatingwebhookconfigurations                  admissionregistration.k8s.io/v1        false        MutatingWebhookConfiguration
validatingwebhookconfigurations                admissionregistration.k8s.io/v1        false        ValidatingWebhookConfiguration
customresourcedefinitions         crd,crds     apiextensions.k8s.io/v1                false        CustomResourceDefinition
apiservices                                    apiregistration.k8s.io/v1              false        APIService
controllerrevisions                            apps/v1                                true         ControllerRevision
daemonsets                        ds           apps/v1                                true         DaemonSet
deployments                       deploy       apps/v1                                true         Deployment
replicasets                       rs           apps/v1                                true         ReplicaSet
statefulsets                      sts          apps/v1                                true         StatefulSet
tokenreviews                                   authentication.k8s.io/v1               false        TokenReview
localsubjectaccessreviews                      authorization.k8s.io/v1                true         LocalSubjectAccessReview
selfsubjectaccessreviews                       authorization.k8s.io/v1                false        SelfSubjectAccessReview
selfsubjectrulesreviews                        authorization.k8s.io/v1                false        SelfSubjectRulesReview
subjectaccessreviews                           authorization.k8s.io/v1                false        SubjectAccessReview
horizontalpodautoscalers          hpa          autoscaling/v1                         true         HorizontalPodAutoscaler
cronjobs                          cj           batch/v1                               true         CronJob
jobs                                           batch/v1                               true         Job
certificatesigningrequests        csr          certificates.k8s.io/v1                 false        CertificateSigningRequest
leases                                         coordination.k8s.io/v1                 true         Lease
endpointslices                                 discovery.k8s.io/v1                    true         EndpointSlice
events                            ev           events.k8s.io/v1                       true         Event
ingresses                         ing          extensions/v1beta1                     true         Ingress
flowschemas                                    flowcontrol.apiserver.k8s.io/v1beta1   false        FlowSchema
prioritylevelconfigurations                    flowcontrol.apiserver.k8s.io/v1beta1   false        PriorityLevelConfiguration
ingressclasses                                 networking.k8s.io/v1                   false        IngressClass
ingresses                         ing          networking.k8s.io/v1                   true         Ingress
networkpolicies                   netpol       networking.k8s.io/v1                   true         NetworkPolicy
runtimeclasses                                 node.k8s.io/v1                         false        RuntimeClass
poddisruptionbudgets              pdb          policy/v1                              true         PodDisruptionBudget
podsecuritypolicies               psp          policy/v1beta1                         false        PodSecurityPolicy
clusterrolebindings                            rbac.authorization.k8s.io/v1           false        ClusterRoleBinding
clusterroles                                   rbac.authorization.k8s.io/v1           false        ClusterRole
rolebindings                                   rbac.authorization.k8s.io/v1           true         RoleBinding
roles                                          rbac.authorization.k8s.io/v1           true         Role
priorityclasses                   pc           scheduling.k8s.io/v1                   false        PriorityClass
csidrivers                                     storage.k8s.io/v1                      false        CSIDriver
csinodes                                       storage.k8s.io/v1                      false        CSINode
csistoragecapacities                           storage.k8s.io/v1beta1                 true         CSIStorageCapacity
storageclasses                    sc           storage.k8s.io/v1                      false        StorageClass
volumeattachments                              storage.k8s.io/v1                      false        VolumeAttachment
</pre>

