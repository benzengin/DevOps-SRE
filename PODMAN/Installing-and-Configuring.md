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

<pre>[vagrant@centos8 ~]$ podman --version
podman version 2.2.1
[vagrant@centos8 ~]$ ls -al /etc/containers
total 32
drwxr-xr-x.  5 root root  114 May 16 09:31 <font color="#0087FF">.</font>
drwxr-xr-x. 83 root root 8192 May 18 11:05 <font color="#0087FF">..</font>
drwxr-xr-x.  2 root root    6 Feb 22 04:52 <font color="#0087FF">certs.d</font>
drwxr-xr-x.  3 root root   21 May 16 09:31 <font color="#0087FF">oci</font>
-rw-r--r--.  1 root root  256 Feb 22 04:52 policy.json
-rw-r--r--.  1 root root 5945 Feb 22 04:52 registries.conf
drwxr-xr-x.  2 root root   26 May 16 09:31 <font color="#0087FF">registries.d</font>
-rw-r--r--.  1 root root 7803 Feb 22 04:52 storage.conf
</pre>  

**Check the default registries:**  
$vi /etc/containers/registries.conf  

<pre><font color="#34E2E2"># To ensure compatibility with docker we&apos;ve included docker.io in the default search list. However Red Hat</font>
<font color="#34E2E2"># does not curate, patch or maintain container images from the docker.io registry.</font>
[registries.search]
registries = [<font color="#AD7FA8">&apos;registry.access.redhat.com&apos;</font>, <font color="#AD7FA8">&apos;registry.redhat.io&apos;</font>, <font color="#AD7FA8">&apos;docker.io&apos;</font>]
</pre>  

**Check the Storage configuration:**  
$vi /etc/containers/storage.conf  

<pre><font color="#34E2E2"># This file is is the configuration file for all tools</font>
<font color="#34E2E2"># that use the containers/storage library.</font>
<font color="#34E2E2"># See man 5 containers-storage.conf for more information</font>
<font color="#34E2E2"># The &quot;container storage&quot; table contains all of the server options.</font>
[storage]

<font color="#34E2E2"># Default Storage Driver</font>
driver = <font color="#AD7FA8">&quot;overlay&quot;</font>

<font color="#34E2E2"># Temporary storage location</font>
runroot = <font color="#AD7FA8">&quot;/var/run/containers/storage&quot;</font>

<font color="#34E2E2"># Primary Read/Write location of container storage</font>
graphroot = <font color="#AD7FA8">&quot;/var/lib/containers/storage&quot;</font>

<font color="#34E2E2"># Storage path for rootless users</font>
<font color="#34E2E2">#</font>
<font color="#34E2E2"># rootless_storage_path = &quot;$HOME/.local/share/containers/storage&quot;</font>

[storage.options]
<font color="#34E2E2"># Storage options to be passed to underlying storage drivers</font>

<font color="#34E2E2"># AdditionalImageStores is used to pass paths to additional Read/Only image stores</font>
<font color="#34E2E2"># Must be comma separated list.</font>
additionalimagestores = [
]

</pre>  

