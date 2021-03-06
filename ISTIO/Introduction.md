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

**What is this mesh logic?**  
Mainly used logic is Telemetry. Telemetry gathers metrics about the overall health of the cluster.Tracing is another 
feature which allows to take arbitrarily complex chains of network calls, that are all wired together, to implement
a single use case. We could get the mesh to tell us exactly what that chain was, how long each step in the chain took, 
and exactly what was happening in that chain. That was a very difficult thing to do in a regular distributed cluster.
We can also implement **Security** and a massive feature of **Service Mesh** is **traffic management**. That's going to  
allow us to do very clever things such as re-routing requests depending on some particular requirement that we have.  

**How Istio Implements a Mesh?**  
Istio is going to inject, or add, its own container for each pod in your system. This container is called a proxy, and is just
a container. In Istio, things are set up so that the network request from the container is going to routed to its proxy. The mesh logic
can be implemented with the Proxy. Istio will have done some IP tables configuration on the container so the contianer thinks it's making a remote call
but actually, it's just calling the proxy. So it's at this point then that the proxy can inject the mesh logic. So the proxy then is
responsible for relaying that call to the target pod's proxy but ultimately, the target container is going to receive that call. And it's possible 
that this container, it's results of this request, needs to call a container in another pod. **Service Mesh** is implemented as proxys that are
placed inside every pod. The **proxy** cann add in any logic that we like as a result of a request being made from one **container** to another.

### The Proxies (or sidecar) are collectively called the "Data Plane" in Istio
### Everything else is called the "Control Plane"

## ARCHITECTURE

### PROXIES:

The way Istio implements service mesh is by using **proxies**. The **proxy** in Istio comes from an open source project called **Envoy**.
Envoy is just a proxy for cluster-based applications.

**Why not use Envoy instead of Istio?**
Envoy Proxy is capable of being deployed into many different types of cluster. That means it has a massive and complex terminology of its own ...

**Istio Simplifies Envoy**
-Istio understands Kubernetes
-You can use regular Kubernetes yaml (via CRDs) which get transformed into Envoy configuration automatically ...

## THE CONTROL PLANE 

**What is Galley?**  
Galley reads in our kubernetes yaml and transforms it into a terminal structure that Istio understands.
This means that Istio can work with non Kubernetes environments (such as consul).
