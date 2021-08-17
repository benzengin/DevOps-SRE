<pre>WHAT IS KUBECTL?

You can use kubectl to deploy applications, inspect and manage them, check cluster resources, view logs, and more.
kubectl is a command-line tool that can run from your computer, in CI/CD pipelines, as part of the operating system, or as a
Docker image. It is a very automation-friendly tool.

kubectl looks for a configuration file named .kube in the $HOME folder. In the .kube file, kubectl stores the cluster
configurations needed to access a Kubernetes cluster. You can also set the KUBECONFIG environment variable or use the --
kubeconfig flag to point to the kubeconfig file.

KUBECTL COMMANDS:

To get a list of supported kubectl commands, run this:

$ kubectl --help

kubectl commands are grouped by category. Let&apos;s look at each category.


BASIC COMMANDS:

The following are basic kubectl commands:

create: Create a resource from a file or from stdin; for example, create a Kubernetes deployment from the file.expose: Take a service, deployment, or pod and expose it as a new Kubernetes Service.

run: Run a particular image on the cluster.

set: Set specific features on objects—for example, set environment variables, update a Docker image in a pod template, and
so on.

explain: Get the documentation of resources—for example, the documentation on deployments.

get: Display one or many resources. For example, you can get a list of runn

edit: Edit a resource—for example, edit a deployment.

delete: Delete resources by filenames, stdin, resources, and names, or by resources and label selectors.

DEPLOY COMMANDS:

The following are kubectl deploy commands:

rollout: Manage the rollout of a resource.

scale: Set a new size for a deployment, ReplicaSet, or StatefulSet.

autoscale: Auto-scale a deployment, ReplicaSet, or StatefulSet.

</pre>

<pre>CLUSTER MANAGEMENT COMMANDS:

The following are the kubectl cluster management commands:

certificate: Modify certificate resources.

cluster-info: Display cluster information.

top: Display resource (CPU/memory/storage) usage.

cordon: Mark a node as unschedulable.

uncordon: Mark a node as schedulable.

drain: Drain a node in preparation for maintenance.

taint: Update the taints on one or more nodes.


TROUBLESHOOOTING AND DEBUGGING COMMANDS:

The following are the kubectl troubleshooting and debugging commands:

describe: Show the details of a specific resource or group of resources.

logs: Print the logs for a container in a pod.

attach: Attach to a running container.

exec: Execute a command in a container.port-forward: Forward one or more local ports to a pod.

proxy: Run a proxy to the Kubernetes API server.

cp: Copy files and directories to and from containers.

auth: Inspect authorization.


ADVANCED COMMANDS: 

The following are the kubectl advanced commands:

diff: Show difference of live version against a would-be applied version.

apply: Apply a configuration to a resource by filename or stdin.

patch: Update the field(s) of a resource using a strategic merge patch.

replace: Replace a resource by filename or stdin.

wait: Wait for a specific condition on one or many resources.

convert: Convert config files between different API versions.
</pre>
