Must Do

Create below infrastructure

4 Web servers having Apache.
1 LoadBalancer server having Nginx.
Create a git repository having an index.html "Hello from Opstree".

![image](images/1.png)

Create an ansible role to setup apache.

![image](images/2.png)

Create an ansible role to setup Nginx as a load balancer on the 4 apache web servers

![image](images/3.png)

![image](images/31.png)

Create an ansible role to deploy the code from the git repository to all web servers in 
one single go.

![image](images/4.png)

![image](images/41.png)

![image](images/42.png)

![image](images/43.png)

![image](images/44.png)

Create an ansible role to deploy the code from the git repository to all web servers in rolling fashion.

![image](images/5.png)

Create an ansible role to deploy the code from the git repository to all web servers in a batches passed as parameter i.e if we pass 3 then first deployment will happen on 3 servers and then only on 1. The default value of batch will be 2 .

![image](images/6.png)

Optional

Replace Nginx with HAProxy as a load balancer.

![image](images/7.png)

![image](images/71.png)

![image](images/72.png)

Use Jenkins as an orchestrator.
Implement Blue/Green deployment in a similar fashion.