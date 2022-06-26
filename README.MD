# What is the purpose of this? 

Foxcube is my own personal home Kubernetes cluster. 
It consists of a single cluster, with pods containing primary services and secondary services
A typical Pod consists of the application it is supposed to be running (primary service), and support applications (databases, etc.) which make up secondary services
There is also an OTEL pod, which consists of a collector and transmitter. Below are the primary services that run in EACH NODE.

## Foxly

Foxly is composed of anything used for our job at Fastly. 
At present it consists of 
* NGINX 
* Fastly WAF 
* Ubuntu VM 

You can access any of the Ubuntu VMs from outside via round robin, as well as any of the NGINX servers the same way 
Each NGINX pod runs a specific website that is exposed to the outside 


## Dolores 

Dolores is our Discord chatbot, a service exposes Dolores to the outside

## FoxCorp 
Foxcorp is for services that are used to support the house and the homelab itself such as PiHole, Docker Registry, etc. 
