# ISTIO Service Mesh

## Introduction:

### What is Istio?

**Istio is a "Service Mesh**  

### What is a Service Mesh?

A Service Mesh is an extra layer of software you deploy alongside your cluster (eg Kubernetes).  
All network traffic that's running through your cluster is going to be routed, through the service mesh
software.  
The service mesh can implement some logic, either before the call is routed to the target container, or this
mesh logic could run after the target contianer is completed and has returned. Or it could be combination of both.  

