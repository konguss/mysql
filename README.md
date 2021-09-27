# mysql


The repo will deploy mysql container in Kubernetes. 

Setps. 

1. Clone the repo. 
2. The deployment takes there environment variable from secret 
3. Create secret file, please note that data in secret is base64, so convert the value to base64. 
4. Go the directory and run kubectl apply -f . 
          ❯ kubectl apply -f .
          configmap/mysql-cm created
          service/mysql created
          deployment.apps/mysql created
          secret/db-secret created
          service/mysql unchanged
5. Check the status. 
     
     kubectl get all 
     
-------------------------------------------------------------------------

Connecting to mysql from application server. 

1. If the application is running from same namespace just service name is enough to connect to db, 
2. Service access from another name, uses the following naming conversion. 


Hostname 	Namespace	Type	Root
Service-name	Namespace	Svc	Cluster.local

3. Connect to db using 

mysql -u $MYSQL_USER -p$MYSQL_PASSWORD -h $HOSTNAME $MYSQL_DATABASE

--------------------------------------------------------------------------
Troubleshooting 
-----------------

1. mysql8 having connection error from application pod, mysql 8 using default authentication plugin so run the following query or downgrade the sql to verison 5.7 

ALTER USER 'admin'@'localhost' IDENTIFIED WITH mysql_native_password BY 'PASSWORD'
PASSWORD is db user admin password. 

