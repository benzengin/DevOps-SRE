# **INTRODUCTION**

## Podman:

-New container engine
-Developed by RedHat
-Docker replacement
-Default for RHEL distributions
-OCI (open container initiative) containers
-No daemon!
-Kubernetes interoperability
-Generate systemd unit files

## Understanding Containers and PODs**

-What's a container?
Linux containers are technologies that allow you to package and isolate applications with their
entire runtime environment -- all of the files necessary to run. This makes it easy to move the contained
application between environments (dev, test, production, etc.) while retaining full functionality.

### Key container components <-

APPLICATIONS:
The application(s) you wish to run. You can run more than one application per container, but most folks
keep it to a single application per container.

SUPPORTING FILES:
These are the libraries and other supporting files necessary to run the application(s).

CONTAINER RUNTIME:
Podman uses an OCI-compliant container runime (runc) to work with the OS and manage containers.

-> What is a container runtime? <-
A container runtime executes and manages container images on a server.
-Podman (runc)
-Docker (containerd)
-Kubernetes (CRI-O)
-OpenShift (CRI-O)

-> What is contianer orchestration? <-
Container orchestration automates the deployment, management, scaling, and networking of containers, making larger 
container environments easier to manage.

Examples:
-Kubernetes
-OpenShift
-Docker Swarm
-Cloud (AWS, Azure, GCP, etc.)

-What's a pod?

A Pod is a group of one or more containers, with shared storage and network resources, and a specification for how to run
the containers. A Pod's contents are always co-located and co-scheduled, and run in a shared context. A Pod models an application-specific "logical host":
it contains one or more application containers which are relatively tightly coupled. In non-cloud contexts, applications executed on the same physical or virtual
machine are analogous to cloud applications executed on the same logical host.
Pods are the smallest deployable units of computing that you can create and manage in Kubernetes.
In terms of Docker concepts, a Pod is similar to a group of Docker containers with shared namespaces and shared filesystem volumes.

-> Key pod components:

#POD

-Shared port bindings, cgroup-parent values, and kernel namespaces
-Once the pod is created, these attributes can't be changed -- must recreate the pod with changes
-Each container has its own instance of conmon (Allows podman to run in detached mode)

#CONTAINER(S)
-Your "regular" containers with your application(s)
-Can communicate with other containers in the pod using shared network namespace

#INFRA CONTAINER
-Holds the namespaces associated with the pod
-Allows podman to connect other containers to the pod
-Default infra container is based on the k8s.gcr.io/pause image

-> Why use pods? <-

Shared Resources:
Containers in the same pod will share the same resources and local network.

Communication:
Containers can easily communicate with others in the same pod as though they were on the same server.

Scalability:
As demand for your pod's service(s) increases, you just deploy additional pods.

#####################################################

PODMAN, SKOPEO and BUILDAH

-> What is Podman? <-

-Default container engine in RHEL
-Develop, run, and manage OCI containers
-No daemon
-Kubernetes interoperability
-Create systemd containers with Podman
$alias docker=podman

-> What is Skopeo? <-

-Command-line utility that performs various operations on container images and image repositories
-Can be used by non-root users
-Doesn't require a daemon
-Works with both OCI and Docker v2 container images

-> What is Buildah? <-
Buildah is a command-line tool for building Open Container Initiative-compatible (that means Docker- and Kubernetes-compatible, too)
images quickly and easily. It can act as a drop-in replacement for the Docker daemon's docker build command (i.e., building images with
a traditional Dockerfile) but is flexible enough to allow you to build images with whatever tools you prefer to use. Buildah is easy to 
incorporate into scripts and build pipelines, and best of all, it doesn't require a running container daemon to build its image.

-> Key Commands <-
$podman
Used to directly manage containers and container images on Linux

$skopeo
Used to inspect, copy, delete, and sign container images and manage image repositories

$buildah
Used to create new container images, without a daemon

**Podman only runs on Linux systems, it requires no daemon, local repository is /var/lib/containers and supports rootless containers**
