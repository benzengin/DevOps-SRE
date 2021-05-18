# Working with Container Images

## Key Commands

**podman**  
Used to directly manage containers and container images on Linux  

**skopeo**
Used to inspect, copy, delete, and sign container images and manage image repositories  

## Example Scenario:

<pre>[vagrant@centos8 ~]$ podman --version
podman version 2.2.1
[vagrant@centos8 ~]$ podman image --help
Manage images

Description:
  Manage images

Usage:
  podman image [command]

Available Commands:
  build       Build an image using instructions from Containerfiles
  diff        Inspect changes to the image&apos;s file systems
  exists      Check if an image exists in local storage
  history     Show history of a specified image
  import      Import a tarball to create a filesystem image
  inspect     Display the configuration of an image
  list        List images in local storage
  load        Load image(s) from a tar archive
  mount       Mount an image&apos;s root filesystem
  prune       Remove unused images
  pull        Pull an image from a registry
  push        Push an image to a specified destination
  rm          Removes one or more images from local storage
  save        Save image(s) to an archive
  search      Search registry for image
  sign        Sign an image
  tag         Add an additional name to a local image
  tree        Prints layer hierarchy of an image in a tree format
  trust       Manage container image trust policy
  unmount     Unmount an image&apos;s root filesystem
  untag       Remove a name from a local image

[vagrant@centos8 ~]$ podman image tag --help
Add an additional name to a local image

Description:
  Adds one or more additional names to locally-stored image.

Usage:
  podman image tag IMAGE TARGET_NAME [TARGET_NAME...]

Examples:
  podman image tag 0e3bbc2 fedora:latest
  podman image tag imageID:latest myNewImage:newTag
  podman image tag httpd myregistryhost:5000/fedora/httpd:v2

</pre>  

**Search an image:**  
<pre>[vagrant@centos8 ~]$ podman search ubi:latest
INDEX       NAME                                               DESCRIPTION                                      STARS   OFFICIAL  AUTOMATED
redhat.com  registry.access.redhat.com/ubi8/ubi                Provides the latest release of the Red Hat U...  0                 
redhat.com  registry.access.redhat.com/ubi7/ubi                The Universal Base Image is designed and eng...  0                 
redhat.com  registry.access.redhat.com/ubi8/ubi-minimal        Provides the latest release of the Minimal R...  0                 
redhat.com  registry.access.redhat.com/ubi8/ubi-init           Provides the latest release of the Red Hat U...  0                 
redhat.com  registry.access.redhat.com/ubi8-minimal            The Universal Base Image Minimal is a stripp...  0                 
redhat.com  registry.access.redhat.com/ubi8                    The Universal Base Image is designed and eng...  0                 
redhat.com  registry.access.redhat.com/ubi7                    The Universal Base Image is designed and eng...  0                 
redhat.com  registry.access.redhat.com/ubi7-minimal            The Universal Base Image Minimal is a stripp...  0                 
redhat.com  registry.access.redhat.com/ubi8-init               The Universal Base Image Init is designed to...  0                 
redhat.com  registry.access.redhat.com/ubi7-init               The Universal Base Image Init is designed to...  0                 
redhat.com  registry.access.redhat.com/ubi7/ubi-minimal        The Universal Base Image Init is designed to...  0                 
redhat.com  registry.access.redhat.com/ubi7/ubi-init           The Universal Base Image Init is designed to...  0                 
redhat.com  registry.access.redhat.com/ubi8/dotnet-21-runtime  Provides the latest release of Red Hat Enter...  0                 
redhat.io   registry.redhat.io/ubi8/ubi                        Provides the latest release of the Red Hat U...  0                 
redhat.io   registry.redhat.io/ubi7/ubi                        The Universal Base Image is designed and eng...  0                 
redhat.io   registry.redhat.io/ubi8/ubi-minimal                Provides the latest release of the Minimal R...  0                 
redhat.io   registry.redhat.io/ubi8/ubi-init                   Provides the latest release of the Red Hat U...  0                 
redhat.io   registry.redhat.io/ubi8-minimal                    The Universal Base Image Minimal is a stripp...  0                 
redhat.io   registry.redhat.io/ubi8                            The Universal Base Image is designed and eng...  0                 
redhat.io   registry.redhat.io/ubi7                            The Universal Base Image is designed and eng...  0                 
redhat.io   registry.redhat.io/ubi7-minimal                    The Universal Base Image Minimal is a stripp...  0                 
redhat.io   registry.redhat.io/ubi8-init                       The Universal Base Image Init is designed to...  0                 
redhat.io   registry.redhat.io/ubi7-init                       The Universal Base Image Init is designed to...  0                 
redhat.io   registry.redhat.io/ubi7/ubi-minimal                The Universal Base Image Init is designed to...  0                 
redhat.io   registry.redhat.io/ubi7/ubi-init                   The Universal Base Image Init is designed to...  0                 
redhat.io   registry.redhat.io/ubi8/dotnet-21-runtime          Provides the latest release of Red Hat Enter...  0               </pre>  

**Grab an image:**  
<pre>[vagrant@centos8 ~]$ podman search ubi:latest
INDEX       NAME                                               DESCRIPTION                                      STARS   OFFICIAL  AUTOMATED
redhat.com  registry.access.redhat.com/ubi8/ubi                Provides the latest release of the Red Hat U...  0                 
redhat.com  registry.access.redhat.com/ubi7/ubi                The Universal Base Image is designed and eng...  0                 
redhat.com  registry.access.redhat.com/ubi8/ubi-minimal        Provides the latest release of the Minimal R...  0                 
redhat.com  registry.access.redhat.com/ubi8/ubi-init           Provides the latest release of the Red Hat U...  0                 
redhat.com  registry.access.redhat.com/ubi8-minimal            The Universal Base Image Minimal is a stripp...  0                 
redhat.com  registry.access.redhat.com/ubi8                    The Universal Base Image is designed and eng...  0                 
redhat.com  registry.access.redhat.com/ubi7                    The Universal Base Image is designed and eng...  0                 
redhat.com  registry.access.redhat.com/ubi7-minimal            The Universal Base Image Minimal is a stripp...  0                 
redhat.com  registry.access.redhat.com/ubi8-init               The Universal Base Image Init is designed to...  0                 
redhat.com  registry.access.redhat.com/ubi7-init               The Universal Base Image Init is designed to...  0                 
redhat.com  registry.access.redhat.com/ubi7/ubi-minimal        The Universal Base Image Init is designed to...  0                 
redhat.com  registry.access.redhat.com/ubi7/ubi-init           The Universal Base Image Init is designed to...  0                 
redhat.com  registry.access.redhat.com/ubi8/dotnet-21-runtime  Provides the latest release of Red Hat Enter...  0                 
redhat.io   registry.redhat.io/ubi8/ubi                        Provides the latest release of the Red Hat U...  0                 
redhat.io   registry.redhat.io/ubi7/ubi                        The Universal Base Image is designed and eng...  0                 
redhat.io   registry.redhat.io/ubi8/ubi-minimal                Provides the latest release of the Minimal R...  0                 
redhat.io   registry.redhat.io/ubi8/ubi-init                   Provides the latest release of the Red Hat U...  0                 
redhat.io   registry.redhat.io/ubi8-minimal                    The Universal Base Image Minimal is a stripp...  0                 
redhat.io   registry.redhat.io/ubi8                            The Universal Base Image is designed and eng...  0                 
redhat.io   registry.redhat.io/ubi7                            The Universal Base Image is designed and eng...  0                 
redhat.io   registry.redhat.io/ubi7-minimal                    The Universal Base Image Minimal is a stripp...  0                 
redhat.io   registry.redhat.io/ubi8-init                       The Universal Base Image Init is designed to...  0                 
redhat.io   registry.redhat.io/ubi7-init                       The Universal Base Image Init is designed to...  0                 
redhat.io   registry.redhat.io/ubi7/ubi-minimal                The Universal Base Image Init is designed to...  0                 
redhat.io   registry.redhat.io/ubi7/ubi-init                   The Universal Base Image Init is designed to...  0                 
redhat.io   registry.redhat.io/ubi8/dotnet-21-runtime          Provides the latest release of Red Hat Enter...  0                 
[vagrant@centos8 ~]$ podman pull registry.access.redhat.com/ubi8/ubi
Trying to pull registry.access.redhat.com/ubi8/ubi:latest...
Getting image source signatures
Copying blob 55eda7743468 done  
Copying blob 4b21dcdd136d done  
Copying config 613e5da7a9 done  
Writing manifest to image destination
Storing signatures
613e5da7a934e1963e37ed935917e8be6b8dfd90cac73a724ddc224fbf16da20
[vagrant@centos8 ~]$ podman images
REPOSITORY                           TAG     IMAGE ID      CREATED      SIZE
registry.access.redhat.com/ubi8/ubi  latest  613e5da7a934  4 weeks ago  213 MB
</pre>   

**Inspect an image**  
<pre>[vagrant@centos8 ~]$ podman inspect 613e5da7a934 |more
[
    {
        &quot;Id&quot;: &quot;613e5da7a934e1963e37ed935917e8be6b8dfd90cac73a724ddc224fbf16da20&quot;,
        &quot;Digest&quot;: &quot;sha256:37e09c34bcf8dd28d2eb7ace19d3cf634f8a073058ed63ec6e199e3e2ad33c33&quot;,
        &quot;RepoTags&quot;: [
            &quot;registry.access.redhat.com/ubi8/ubi:latest&quot;
        ],
        &quot;RepoDigests&quot;: [
            &quot;registry.access.redhat.com/ubi8/ubi@sha256:37e09c34bcf8dd28d2eb7ace19d3cf634f8a073058ed63ec6e199e3e2ad33c33&quot;,
            &quot;registry.access.redhat.com/ubi8/ubi@sha256:70fbfa84a056aa1d4dcc5d45119852887527ae361071a9c4051a17a083aefa06&quot;
        ],
        &quot;Parent&quot;: &quot;&quot;,
        &quot;Comment&quot;: &quot;&quot;,
        &quot;Created&quot;: &quot;2021-04-14T20:58:21.072192Z&quot;,
        &quot;Config&quot;: {
            &quot;Env&quot;: [
                &quot;PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin&quot;,
                &quot;container=oci&quot;
            ],
            &quot;Cmd&quot;: [
                &quot;/bin/bash&quot;
            ],
            &quot;Labels&quot;: {
                &quot;architecture&quot;: &quot;x86_64&quot;,
                &quot;build-date&quot;: &quot;2021-04-14T20:57:57.866314&quot;,
                &quot;com.redhat.build-host&quot;: &quot;cpt-1005.osbs.prod.upshift.rdu2.redhat.com&quot;,
                &quot;com.redhat.component&quot;: &quot;ubi8-container&quot;,
                &quot;com.redhat.license_terms&quot;: &quot;https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI&quot;,
                &quot;description&quot;: &quot;The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supp
orts Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly.&quot;,
                &quot;distribution-scope&quot;: &quot;public&quot;,
                &quot;io.k8s.description&quot;: &quot;The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat on
ly supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly.&quot;,
                &quot;io.k8s.display-name&quot;: &quot;Red Hat Universal Base Image 8&quot;,
                &quot;io.openshift.expose-services&quot;: &quot;&quot;,
                &quot;io.openshift.tags&quot;: &quot;base rhel8&quot;,
                &quot;maintainer&quot;: &quot;Red Hat, Inc.&quot;,
                &quot;name&quot;: &quot;ubi8&quot;,
                &quot;release&quot;: &quot;297.1618432833&quot;,
                &quot;summary&quot;: &quot;Provides the latest release of Red Hat Universal Base Image 8.&quot;,
                &quot;url&quot;: &quot;https://access.redhat.com/containers/#/registry.access.redhat.com/ubi8/images/8.3-297.1618432833&quot;,
                &quot;vcs-ref&quot;: &quot;7dd0869dabeebe7119fc04b16767c5991bcaa865&quot;,
                &quot;vcs-type&quot;: &quot;git&quot;,
                &quot;vendor&quot;: &quot;Red Hat, Inc.&quot;,
                &quot;version&quot;: &quot;8.3&quot;
            }
        },
        &quot;Version&quot;: &quot;1.13.1&quot;,
        &quot;Author&quot;: &quot;&quot;,
        &quot;Architecture&quot;: &quot;amd64&quot;,
        &quot;Os&quot;: &quot;linux&quot;,
        &quot;Size&quot;: 212579515,
        &quot;VirtualSize&quot;: 212579515,
        &quot;GraphDriver&quot;: {
            &quot;Name&quot;: &quot;overlay&quot;,
</pre>  

