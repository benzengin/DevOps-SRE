# Managing Container Images Using Podman

## What are containers?
**Linux containers** are technologies that allow you to package and isolate applications with their **entire runtime environment --    
all of the files necessary to run**. This makes it easy to move the contained application between environments (dev, test, production, etc.)  
while **retaining fully functionally**.  

## Key Container Components
### APPLICATION(S) 
The application(s) you wish to run. You can run more than one application percontainer, but most folks keep it to a single application per container.  
### SUPPORTING FILES 
These are the libraries and other supporting files necessary to run the application(s).  
### CONTAINER RUNTIME 
Podman uses an **OCI-compliant container runtime (runc)** to work with the OS and manage containers.  

## What is a container image? 
-Starting point for a running container  
-Immutable  
-Sharable  
-Uniform  
## What is in a container image?  
**Binary**  
Contains all of the requirements necessary to run a single container  
**Metadata**  
Metadata describing the container's needs and capabilities  
**Package**  
Containers can be considered a form of packaging technology  

**Containers are made up of the resources defined in the image, plus any additional resources defined when the container is created.**  

## Deploying a Container Image  

**CONTAINER**
We start with an empty container.  

**IMAGE LAYER(S)**  
The read-only image layer(s) are deployed. The number of image layers will vary from image to image. These layers are immutable and can never be changed.  

**CONTAINER LAYER**  
The read-write container layer is deployed as a copy-on-write filesystem on top of the read-only image layers. Any changes to the container happen here and
are deployed on top of the read-only image layer(s), which remain unchanged.  

## Multiple containers, same image  
**When more than one container is created from the same container image, they share the read-only image layer(s), with only the read-write container layers being 
unique**  

## Local Image Storage  
Where are the copies of the container images kept?  
**This will depend on whether you are running the containers as the root user or running rootless containers!**  

**As root:**
### /var/lib/containers
**Rootless:**
### ~/.local/share/containers  
**Optional: Configure a local registry**  

## What is a container registry?
**Container registries** are places, generally outside of the local host, that store **container images**. You can **push** images to or **pull** them from a **registry**. A **container registry** con contain one or more **repositories**.  

**Container Regstries can be:**
-Public  
-Private  

## Key Commands
**podman**  
Used to directly manage **containers** and perform some basic container image operations on **Linux**.  

**skopeo**  
Used to inspect, copy, delete, and sign **container images** and manage image repositories. More advanced functionality than **podman**.  

**buildah**  
Used to create new **container images**, without a daemon. More advaned functionality than **podman**.  





