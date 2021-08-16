<pre>Hi.


I had to configure my Linux Box (private) for accessing the Openshift Infrastructure (Frontend/Backend) of my actual [Secret](Contract Role) Company .. here my Steps:

** IMPORTANT: Don&apos;t forget your Keys:**

Connect to Openshift (Frontend / Backend via oc client):

1. Configure your Logins and Certificates as shown here:

https://[Secret]/confluence/pages/viewpage.action?pageId=57902006

2. Get your Token (valid for 24h Right?)


IMPORTANT: Frontend and Backend use different Tokens!


Go to: https://[Secret]/csp/qa/be/console/catalog

oc login https://[Secret]/csp/qa/be --token={to be replaced by your TOKEN}


3. ON your host create (two?) config files:

(base) bayram@ghazal:~/.kube$ ls
cache  config  config-be  config-fe

I created two config files one for the frontend and one for the backend.


4. Set your environment Variable:

export KUBECONFIG=/home/bayram/.kube/config-be


5. Use oc cli tool to login to your environment:

oc get all -n [Namespace]

NAME                                                  READY   STATUS             RESTARTS   AGE
pod/bop-sample-messaging-c9d5467dc-5htsr              1/1     Running            0          3m
pod/container-with-tools-58dcb57f65-9mggx             1/1     Running            0          4d
pod/prometheus-monitoring-prometheus-controller-0     3/3     Running            0          4d
pod/sample-deployment-workflow-fb85c98c-gbsnq         1/1     Running            0          4d
</pre>





