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

**Containers are mad up of the resources defined in the image, plus any additional resources defined when the container is created.**  

## Deploying a Container Image  

**CONTAINER**
We start with an empty container.  

**IMAGE LAYER(S)**  
The read-only image layer(s) are deployed. The number of image layers will vary from image to image. These layers are immutable and can never be changed.  

**CONTAINER LAYER**  
The read-write container layer is deployed as a copy-on-write filesystem on top of the read-only image layers. Any changes to the container happen here and
are deployed on top of the read-only image layer(s), which remain unchanged.  
