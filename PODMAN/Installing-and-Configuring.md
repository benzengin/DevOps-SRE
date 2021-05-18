# Installing and Configuring Podman on RHEL 

## Installing Podman Using yum  
-Latest version from **RHEL** repositories  
-Easy to maintain  

## Using Application Streams in RHEL 8  
**Application Streams** allow for multiple versions of user-space components, providing more flexbility to customize **RHEL 8** while maintaining system and application 
stability.  

### Application Streams: How Do They Work?  
**A module is a collection of RPM packages that make up a component and are generally installed together.**
**A profile is a collection of packages to be installed together for a particular use case (server, client, minimal, etc.).**  

### Module Streams Can Be Active or Inactive   
Streams are active if they have been marked as default or if the user has enabled them via an action.  

### Only One Stream Can Be Active at Any Time  
This allows only one version of a component to be installed on a system.  

### Each Module Can Have a Default Stream  
This enables ease of use when consuming packages without the need to go deep into modules. Just use the defaults!  

### Certain Module Streams Depend on Other Streams  
Sometimes there will be specific dependencies, but don't worry -- yum will figure it out!  

### Podman Configuration File Locations  
**/etc/containers**
This is the main configuration directory for **Podman**.  
**/etc/containers/registries.conf**  
This file contains configuration information for **container registries** and **registry mirrors**.  

### How to setup a Podman environment  
**yum**
$sudo yum -y install podman  

**Application Streams**  
$sudo yum module list container-tools  
$sudo yum module enable [module]
$sudo yum module enable container-tools:2.0 (example!)  

**Reset back to default:**  
$sudo yum module reset container-tools

**Check the installed Podman version:**  
$podman --version  

