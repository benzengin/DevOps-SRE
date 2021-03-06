# Working with Container Images

## Key Commands

## PODMAN 

**podman**  
Used to directly manage containers and container images on Linux    

## How to use PODMAN:

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

**SEARCH AN IMAGE:**  
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

**GRAB AN IMAGE:**  
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

**INSPECT AN IMAGE:**  
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

**HOW TO TAG AN IMAGE:**  

<pre>[vagrant@centos8 ~]$ podman images
REPOSITORY                           TAG     IMAGE ID      CREATED      SIZE
registry.access.redhat.com/ubi8/ubi  latest  613e5da7a934  4 weeks ago  213 MB
[vagrant@centos8 ~]$ podman tag ubi:latest ubi8
[vagrant@centos8 ~]$ podman images
REPOSITORY                           TAG     IMAGE ID      CREATED      SIZE
registry.access.redhat.com/ubi8/ubi  latest  613e5da7a934  4 weeks ago  213 MB
localhost/ubi8                       latest  613e5da7a934  4 weeks ago  213 MB
</pre>

**HOW TO HOST A PODMAN IMAGE REGISTRY**  

<pre>[vagrant@centos8 ~]$ sudo mkdir -p /var/lib/registry
[vagrant@centos8 ~]$ sudo podman run --privileged -d --name po-registry -p 5000:5000 -v /var/lib/registry:/var/lib/registry --restart=always registry:2
9026288c2e90e9904a28e9cc81fdca703a85b404b45fcfac30ab2852a09cf510
[vagrant@centos8 ~]$ sudo vi /etc/containers/registries.conf
[vagrant@centos8 ~]$ sudo systemctl restart podman
[vagrant@centos8 ~]$ sudo podman ps -a
CONTAINER ID  IMAGE                         COMMAND               CREATED         STATUS             PORTS                   NAMES
9026288c2e90  docker.io/library/registry:2  /etc/docker/regis...  59 seconds ago  Up 58 seconds ago  0.0.0.0:5000-&gt;5000/tcp  po-registry
</pre>  

**IMPORTANT: ADD THE LOCAL REGISTRY TO THE REGISTRIES.CONF FILE AND RESTART PODMAN!**   

**HOW TO PUSH AN IMAGE TO THE LOCAL REGISTRY:**  
<pre>[vagrant@centos8 ~]$ podman login localhost:5000
Username: vagrant 
Password: 
Login Succeeded!
[vagrant@centos8 ~]$ podman tag registry.access.redhat.com/ubi8/ubi:latest localhost:5000/ubi8/ubi
[vagrant@centos8 ~]$ podman images
REPOSITORY                           TAG     IMAGE ID      CREATED      SIZE
registry.access.redhat.com/ubi8/ubi  latest  613e5da7a934  4 weeks ago  213 MB
localhost/ubi8                       latest  613e5da7a934  4 weeks ago  213 MB
localhost:5000/ubi8/ubi              latest  613e5da7a934  4 weeks ago  213 MB
[vagrant@centos8 ~]$ podman push localhost:5000/ubi8/ubi:latest
Getting image source signatures
Copying blob 476579af086a skipped: already exists  
Copying blob 1e8cd6732429 [--------------------------------------] 0.0b / 0.0b
Copying config 613e5da7a9 [======================================] 4.3KiB / 4.3KiB
Writing manifest to image destination
Storing signatures
</pre>  

**HOW TO UNTAG AND DELETE AN IMAGE:**  

<pre>[vagrant@centos8 ~]$ podman untag ubi8
[vagrant@centos8 ~]$ podman images
REPOSITORY  TAG     IMAGE ID      CREATED      SIZE
&lt;none&gt;      &lt;none&gt;  613e5da7a934  4 weeks ago  213 MB
[vagrant@centos8 ~]$ podman rmi 613e5da7a934
Deleted: 613e5da7a934e1963e37ed935917e8be6b8dfd90cac73a724ddc224fbf16da20
[vagrant@centos8 ~]$ podman image list
REPOSITORY  TAG     IMAGE ID  CREATED  SIZE
[vagrant@centos8 ~]$ 
</pre>  

## How to use SKOPEO:  

**skopeo:**  
Used to inspect, copy, delete, and sign container images and manage image repositories.  

<pre>[vagrant@centos8 ~]$ skopeo --version
skopeo version 1.2.0
[vagrant@centos8 ~]$ skopeo inspect --help
Return low-level information about &quot;IMAGE-NAME&quot; in a registry/transport
Supported transports:
containers-storage, dir, docker, docker-archive, docker-daemon, oci, oci-archive, ostree, tarball

See skopeo(1) section &quot;IMAGE NAMES&quot; for the expected format

Usage:
skopeo inspect [command options] IMAGE-NAME

Examples:
skopeo inspect docker://docker.io/fedora

Flags:
      --authfile string             path of the authentication file. Default is ${XDG_RUNTIME_DIR}/containers/auth.json
      --cert-dir PATH               use certificates at PATH (*.crt, *.cert, *.key) to connect to the registry or daemon
      --config                      output configuration
      --creds USERNAME[:PASSWORD]   Use USERNAME[:PASSWORD] for accessing the registry
      --daemon-host HOST            use docker daemon host at HOST (docker-daemon: only)
  -h, --help                        help for inspect
      --no-creds                    Access the registry anonymously
      --raw                         output raw manifest or configuration
      --registry-token string       Provide a Bearer token for accessing the registry
      --retry-times int             the number of times to possibly retry
      --shared-blob-dir DIRECTORY   DIRECTORY to use to share blobs across OCI repositories
</pre>  

**HOW TO USE SKOPEO TO COPY AN IMAGE FROM REGISTRY TO ANOTHER:**  
<pre>[vagrant@centos8 ~]$ skopeo login localhost:5000
Username: vagrant
Password: 
Login Succeeded!
[vagrant@centos8 ~]$ skopeo copy docker://registry.access.redhat.com/ubi7/ubi:latest docker://localhost:5000/ubi7/ubi:latest
Getting image source signatures
Copying blob de10d63efa9c done  
Copying blob cd50c1c5fe4a done  
Copying config 899998a87b done  
Writing manifest to image destination
Storing signatures
</pre>  

**HOW TO SYNC AN IMAGE FROM SRC TO DEST:**  

<pre>[vagrant@centos8 ~]$ skopeo sync --src docker --dest docker --scoped registry.access.redhat.com/ubi7/ubi:latest localhost:5000/ubi7/ubi
<font color="#06989A">INFO</font>[0000] Tag presence check                            <font color="#06989A">imagename</font>=&quot;registry.access.redhat.com/ubi7/ubi:latest&quot; <font color="#06989A">tagged</font>=true
<font color="#06989A">INFO</font>[0000] Copying image tag 1/1                         <font color="#06989A">from</font>=&quot;docker://registry.access.redhat.com/ubi7/ubi:latest&quot; <font color="#06989A">to</font>=&quot;docker://localhost:5000/ubi7/ubi/registry.access.redhat.com/ubi7/ubi:latest&quot;
Getting image source signatures
Copying blob cd50c1c5fe4a skipped: already exists  
Copying blob de10d63efa9c [--------------------------------------] 0.0b / 0.0b
Copying config 899998a87b done  
Writing manifest to image destination
Storing signatures
<font color="#06989A">INFO</font>[0001] Synced 1 images from 1 sources  </pre>  

**HOW TO GET MORE INFORMATION ABOUT CONTAINER IMAGE:**  

<pre>[vagrant@centos8 ~]$ skopeo inspect docker://localhost:5000/ubi7/ubi:latest
{
    &quot;Name&quot;: &quot;localhost:5000/ubi7/ubi&quot;,
    &quot;Digest&quot;: &quot;sha256:392880458a10e57d3a170cc0fb7fce952d2dd155565b272e2e312a6b3f90488b&quot;,
    &quot;RepoTags&quot;: [
        &quot;latest&quot;
    ],
    &quot;Created&quot;: &quot;2021-04-20T04:03:36.940614Z&quot;,
    &quot;DockerVersion&quot;: &quot;1.13.1&quot;,
    &quot;Labels&quot;: {
        &quot;architecture&quot;: &quot;x86_64&quot;,
        &quot;build-date&quot;: &quot;2021-04-20T04:03:11.668794&quot;,
        &quot;com.redhat.build-host&quot;: &quot;cpt-1002.osbs.prod.upshift.rdu2.redhat.com&quot;,
        &quot;com.redhat.component&quot;: &quot;ubi7-container&quot;,
        &quot;com.redhat.license_terms&quot;: &quot;https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI&quot;,
        &quot;description&quot;: &quot;The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly.&quot;,
        &quot;distribution-scope&quot;: &quot;public&quot;,
        &quot;io.k8s.description&quot;: &quot;The Universal Base Image is designed and engineered to be the base layer for all of your containerized applications, middleware and utilities. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly.&quot;,
        &quot;io.k8s.display-name&quot;: &quot;Red Hat Universal Base Image 7&quot;,
        &quot;io.openshift.tags&quot;: &quot;base rhel7&quot;,
        &quot;name&quot;: &quot;ubi7&quot;,
        &quot;release&quot;: &quot;372&quot;,
        &quot;summary&quot;: &quot;Provides the latest release of the Red Hat Universal Base Image 7.&quot;,
        &quot;url&quot;: &quot;https://access.redhat.com/containers/#/registry.access.redhat.com/ubi7/images/7.9-372&quot;,
        &quot;vcs-ref&quot;: &quot;a4e710a688a6374670ecdd56637c3f683d11cbe3&quot;,
        &quot;vcs-type&quot;: &quot;git&quot;,
        &quot;vendor&quot;: &quot;Red Hat, Inc.&quot;,
        &quot;version&quot;: &quot;7.9&quot;
    },
    &quot;Architecture&quot;: &quot;amd64&quot;,
    &quot;Os&quot;: &quot;linux&quot;,
    &quot;Layers&quot;: [
        &quot;sha256:cd50c1c5fe4a03fb64368f18720df651ef9b17fa71955af2b1a45d7f6eb23dee&quot;,
        &quot;sha256:de10d63efa9ceabd041f633b48d5405a58fbd4d7521fe9f693c9d24d72380b7f&quot;
    ],
    &quot;Env&quot;: [
        &quot;PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin&quot;,
        &quot;container=oci&quot;
    ]
}
</pre>  


**HOW TO LIST THE TAGS ON AN SPECIFIC IMAGE:**  

<pre>[vagrant@centos8 ~]$ skopeo list-tags docker://localhost:5000/ubi7/ubi
{
    &quot;Repository&quot;: &quot;localhost:5000/ubi7/ubi&quot;,
    &quot;Tags&quot;: [
        &quot;latest&quot;
    ]
}
</pre>  



