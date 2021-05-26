# Managing Containers Using Podman

## Running First Podman Container

### What are containers?

**Linux containers** are technologies that allow you to package and isolate applications with their **entire runtime environment --
all of the files necessary to run.** This makes it easy to move the contained application between environments (dev, test, production, etc.)
while **retaining full functionality**.

### Deploying a Container Image

**CONTAINER**
Start with an empty container.

**IMAGE LAYER(S)**
The read-only image layer(s) are deployed. The number of image layers will vary from image to image. These layers are immutable and can never
be changed.

**CONTAINER-LAYER**
The read-write container layer is deployed as a copy-on-write filesystem on top of the read-only image layers. Any changes to the container
happen here and are deployed on top of the read-only image layer(s), which remain unchanged.

### COMMANDS:
-podman rm  
-podman images  
-podman search  
-podman run  
-podman exec  
-podman stop  
-podman rm  
-podman rmi  

### EXAMPLE SESSION:

<pre>[vagrant@centos8 ~]$ sudo podman ps -a
CONTAINER ID  IMAGE   COMMAND  CREATED  STATUS  PORTS   NAMES
[vagrant@centos8 ~]$ sudo podman images
REPOSITORY  TAG     IMAGE ID  CREATED  SIZE
[vagrant@centos8 ~]$ podman search httpd-24 | more
INDEX       NAME                                                 DESCRIPTION                                      STARS   OFFICIAL  AUTOMATED
redhat.com  registry.access.redhat.com/rhscl/httpd-24-rhel7      Apache HTTP 2.4 Server                           0                 
redhat.com  registry.access.redhat.com/ubi8/httpd-24             Platform for running Apache httpd 2.4 or bui...  0                 
redhat.io   registry.redhat.io/rhel8/httpd-24                    Apache HTTP Server 2.4 available as containe...  0                 
redhat.io   registry.redhat.io/rhscl/httpd-24-rhel7              Apache HTTP 2.4 Server                           0                 
redhat.io   registry.redhat.io/ubi8/httpd-24                     Platform for running Apache httpd 2.4 or bui...  0                 
docker.io   docker.io/centos/httpd-24-centos7                    Platform for running Apache httpd 2.4 or bui...  39                
docker.io   docker.io/centos/httpd-24-centos8                                                                     0                 
docker.io   docker.io/dmitryzhukovski/httpd-24                                                                    0                 
docker.io   docker.io/abrreg/httpd-24-centos7                                                                     0                 
docker.io   docker.io/himanshumps/httpd-24-centos7                                                                0                 
docker.io   docker.io/mskalick/httpd-24-centos7                                                                   0                 
docker.io   docker.io/itisopen/httpd-24-centos7                                                                   0                 
docker.io   docker.io/mprahl/s2i-angular-httpd24                 An S2I image for building and running Angula...  3                 [OK]
docker.io   docker.io/cragr/httpd-24-fedora                      Platform for running Apache httpd 2.4 or bui...  0                 
docker.io   docker.io/bgally/httpd-24-centos7                                                                     0                 
docker.io   docker.io/cs2cdocker/httpd-24-neokylin7                                                               0                 
docker.io   docker.io/hhorak/httpd-24-centos7                    Apache HTTP 2.4 Server                           0                 
docker.io   docker.io/paragpatil2006/httpd-24-centos-7                                                            0                 
docker.io   docker.io/guanyebo/httpd-24-rhel7                                                                     1                 
docker.io   docker.io/eupraxialabs/httpd-24-centos7              Builder image primarily for OpenShift Online     0                 [OK]
docker.io   docker.io/surajnarwade/httpd-24-centos7                                                               0                 
docker.io   docker.io/ocampoge/httpd-24-fedora                   Simple apache on fedora                          0                 
docker.io   docker.io/glfngocanh/httpd-24                                                                         0                 
docker.io   docker.io/cs2cdocker/httpd-24-neokylin7-testapp                                                       0                 
docker.io   docker.io/cs2cdocker/httpd-24-neokylin7-self-signed                                                   0                 
docker.io   docker.io/manishgcloud/httpd-24-rhel7                                                                 0                 
docker.io   docker.io/cs2cdocker/httpd-24-neokylin7-testapp2                                                      0                 
docker.io   docker.io/amrut7764/httpd-24-alpinebased                                                              0                 
docker.io   docker.io/laithleo/httpd-24-centos7                                                                   0                 
docker.io   docker.io/opendevsolutions/httpd-24-proxy                                                             0                 
[vagrant@centos8 ~]$ podman run -df docker.io/centos/httpd-24-centos8
Error: unknown shorthand flag: &apos;f&apos; in -f
[vagrant@centos8 ~]$ podman run -dt docker.io/centos/httpd-24-centos8
Trying to pull docker.io/centos/httpd-24-centos8:latest...
Getting image source signatures
Copying blob 3c72a8ed6814 done  
Copying blob 42c269fe6f7b done  
Copying blob afdf2ecdaa2f done  
Copying blob 74241943e2c2 done  
Copying blob 07a0da26acf9 done  
Copying blob a1d926117d46 done  
Copying blob eefe613be3f4 done  
Copying blob a33035987d8c done  
Copying blob 9e6c9d2db631 done  
Copying config 7d2fe0e482 done  
Writing manifest to image destination
Storing signatures
210649eb5fb1bf9a9fbcc9751db3ae5e961b05fb0984c4a6411a3a8a4dc8ed26
[vagrant@centos8 ~]$ podman ps -
aError: `podman ps` takes no arguments
[vagrant@centos8 ~]$ podman ps -a
CONTAINER ID  IMAGE                                     COMMAND               CREATED        STATUS            PORTS   NAMES
210649eb5fb1  docker.io/centos/httpd-24-centos8:latest  /usr/bin/run-http...  5 seconds ago  Up 4 seconds ago          wizardly_ramanujan
[vagrant@centos8 ~]$ 

</pre>  

<pre>[vagrant@centos8 ~]$ podman images
REPOSITORY                         TAG     IMAGE ID      CREATED       SIZE
docker.io/centos/httpd-24-centos8  latest  7d2fe0e482ba  9 months ago  441 MB
[vagrant@centos8 ~]$ cat /etc/redhat-release 
CentOS Linux release 8.3.2011
[vagrant@centos8 ~]$ podman ps -a
CONTAINER ID  IMAGE                                     COMMAND               CREATED             STATUS                 PORTS   NAMES
210649eb5fb1  docker.io/centos/httpd-24-centos8:latest  /usr/bin/run-http...  About a minute ago  Up About a minute ago          wizardly_ramanujan
[vagrant@centos8 ~]$ podman exec -it wizardly_ramanujan /bin/bash
bash-4.4$ NOW A BASH SESSION INSIDE CONTAINER
</pre>  

<pre>bash-4.4$ ls
bash-4.4$ cat /etc/redhat-release 
CentOS Linux release 8.2.2004 (Core) 
</pre>  

<pre>ash-4.4$ curl http://localhost:8080
&lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot;?&gt;
&lt;!DOCTYPE HTML&gt;
&lt;html lang=&quot;en&quot;&gt;
  &lt;head&gt;
    &lt;title&gt;Apache HTTP Server Test Page powered by CentOS&lt;/title&gt;
    &lt;meta charset=&quot;utf-8&quot;/&gt;
    &lt;meta name=&quot;viewport&quot; content=&quot;width=device-width, initial-scale=1, shrink-to-fit=no&quot;/&gt;
    &lt;link rel=&quot;shortcut icon&quot; href=&quot;http://www.centos.org/favicon.ico&quot;/&gt;
    &lt;link rel=&quot;stylesheet&quot; media=&quot;all&quot; href=&quot;noindex/common/css/bootstrap.min.css&quot;/&gt;
    &lt;link rel=&quot;stylesheet&quot; media=&quot;all&quot; href=&quot;noindex/common/css/styles.css&quot;/&gt;
  &lt;/head&gt;
  &lt;body&gt;
    &lt;header class=&quot;container&quot;&gt;
      &lt;section class=&quot;row&quot;&gt;
        &lt;div class=&quot;header-graphic v3-banner platform-banner centos-banner&quot; role=&quot;banner&quot;&gt;
          &lt;div class=&quot;graphic-inner&quot;&gt;
            &lt;div class=&quot;graphic-inner2&quot;&gt;
              &lt;div class=&quot;banner-title&quot;&gt;&lt;span&gt;Apache HTTP Server&lt;/span&gt;&lt;/div&gt;
            &lt;/div&gt;
          &lt;/div&gt;
        &lt;/div&gt;
      &lt;/section&gt;
    &lt;/header&gt;
    &lt;main class=&quot;container&quot;&gt;
      &lt;h1&gt;Test Page&lt;/h1&gt;
      &lt;p class=&quot;lead&quot;&gt;This page is used to test the proper operation of the &lt;a href=&quot;http://apache.org&quot;&gt;Apache HTTP server&lt;/a&gt; after it has been installed. If you can read this page it means that this site is working properly. This server is powered by &lt;a href=&quot;http://centos.org&quot;&gt;CentOS&lt;/a&gt;.&lt;/p&gt;
      &lt;hr/&gt;
      &lt;section class=&quot;row&quot;&gt;
        &lt;div class=&quot;col-md-6&quot;&gt;
          &lt;h2&gt;Just visiting?&lt;/h2&gt;
			  	&lt;p class=&quot;lead&quot;&gt;The website you just visited is either experiencing problems or is undergoing routine maintenance.&lt;/p&gt;
          &lt;p&gt;If you would like to let the administrators of this website know that you&apos;ve seen this page instead of the page you expected, you should send them e-mail. In general, mail sent to the name &quot;webmaster&quot; and directed to the website&apos;s domain should reach the appropriate person.&lt;/p&gt;
          &lt;p&gt;For example, if you experienced problems while visiting www.example.com, you should send e-mail to &quot;webmaster@example.com&quot;.&lt;/p&gt;
        &lt;h2&gt;Important note:&lt;/h2&gt;
        &lt;p class=&quot;lead&quot;&gt;The CentOS Project has nothing to do with this website or its content, it just provides the software that makes the website run.&lt;/p&gt;
        &lt;p&gt;If you have issues with the content of this site, contact the owner of the domain, not the CentOS project. Unless you intended to visit CentOS.org, the CentOS Project does not have anything to do with this website, the content or the lack of it.&lt;/p&gt;
        &lt;p&gt;For example, if this website is www.example.com, you would find the owner of the example.com domain at the following WHOIS server: &lt;a href=&quot;http://www.internic.net/whois.html&quot;&gt;http://www.internic.net/whois.html&lt;/a&gt;&lt;/p&gt;
        &lt;/div&gt;
        &lt;div class=&quot;col-md-6&quot;&gt;
          &lt;h2&gt;Are you the Administrator?&lt;/h2&gt;
          &lt;p&gt;You should add your website content to the directory &lt;code&gt;/var/www/html/&lt;/code&gt;.&lt;/p&gt;
          &lt;p&gt;To prevent this page from ever being used, follow the instructions in the file &lt;code&gt;/etc/httpd/conf.d/welcome.conf&lt;/code&gt;.&lt;/p&gt;
          &lt;h2&gt;Promoting Apache and CentOS&lt;/h2&gt;
          &lt;p&gt;You are free to use the images below on Apache and CentOS Linux powered HTTP servers. Thanks for using Apache and CentOS!&lt;/p&gt;
          &lt;p&gt;
            &lt;a href=&quot;http://httpd.apache.org/&quot;&gt;
              &lt;img src=&quot;noindex/common/images/pb-apache.png&quot; alt=&quot;[ Powered by Apache ]&quot;/&gt;
            &lt;/a&gt;
            &lt;a href=&quot;http://www.centos.org/&quot;&gt;
              &lt;img src=&quot;noindex/common/images/pb-centos.png&quot; alt=&quot;[ Powered by CentOS Linux ]&quot;/&gt;
            &lt;/a&gt;
          &lt;/p&gt;
        &lt;/div&gt;
        &lt;div class=&quot;col-md-6&quot;&gt;
        &lt;/div&gt;
        &lt;div class=&quot;col-md-6&quot;&gt;
          &lt;h2&gt;The CentOS Project&lt;/h2&gt;
          &lt;p&gt;The CentOS Linux distribution is a stable, predictable, manageable and reproduceable platform derived from the sources of Red Hat Enterprise Linux (RHEL).&lt;/p&gt;
          &lt;p&gt;Additionally to being a popular choice for web hosting, CentOS also provides a rich platform for open source communities to build upon. For more information please visit the &lt;a href=&quot;http://www.centos.org/&quot;&gt;CentOS website&lt;/a&gt;.&lt;/p&gt;
</pre>  

<pre>bash-4.4$ exit
exit
[vagrant@centos8 ~]$ podman ps -a
CONTAINER ID  IMAGE                                     COMMAND               CREATED        STATUS            PORTS   NAMES
210649eb5fb1  docker.io/centos/httpd-24-centos8:latest  /usr/bin/run-http...  6 minutes ago  Up 6 minutes ago          wizardly_ramanujan
[vagrant@centos8 ~]$ podman stop wizardly_ramanujan
210649eb5fb1bf9a9fbcc9751db3ae5e961b05fb0984c4a6411a3a8a4dc8ed26
[vagrant@centos8 ~]$ podman ps -a
CONTAINER ID  IMAGE                                     COMMAND               CREATED        STATUS                    PORTS   NAMES
210649eb5fb1  docker.io/centos/httpd-24-centos8:latest  /usr/bin/run-http...  6 minutes ago  Exited (0) 4 seconds ago          wizardly_ramanujan
[vagrant@centos8 ~]$ podman rm wizardly_ramanujan
210649eb5fb1bf9a9fbcc9751db3ae5e961b05fb0984c4a6411a3a8a4dc8ed26
[vagrant@centos8 ~]$ podman ps -a
CONTAINER ID  IMAGE   COMMAND  CREATED  STATUS  PORTS   NAMES
[vagrant@centos8 ~]$ 
</pre>  

<pre>[vagrant@centos8 ~]$ podman images
REPOSITORY                         TAG     IMAGE ID      CREATED       SIZE
docker.io/centos/httpd-24-centos8  latest  7d2fe0e482ba  9 months ago  441 MB
[vagrant@centos8 ~]$ podman rmi httpd-24-centos8:latest
Untagged: docker.io/centos/httpd-24-centos8:latest
Deleted: 7d2fe0e482baf01e8a54f6c633bb2b5a89b3f35d278458c5ed73f3fdcc5646aa
[vagrant@centos8 ~]$ podman images
REPOSITORY  TAG     IMAGE ID  CREATED  SIZE
[vagrant@centos8 ~]$ 
</pre>  


