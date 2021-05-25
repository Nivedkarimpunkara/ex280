#!/bin/bash

scp -r root@utility:/home/lab/ocp4/auth/kube* .
x=$(cat /home/student/kubeadmin-password)
y=$(cat /home/student/kubeconfig | grep server | awk -F" " '{print $2}'|uniq) 
oc login -u kubeadmin -p $x $y

oc new-project exqam-ex280-7
oc adm taint node master02 key1=value1:NoSchedule
oc adm taint node master03 key1=value1:NoSchedule
oc new-app --name app1 httpd 
oc expose service app1 



oc new-project exqam-ex280-8
oc new-app --name test01 httpd 
oc expose service test01 



oc new-project exqam-ex280-9
oc new-app --name paypal httpd
oc expose service paypal



oc new-project exqam-ex280-10
oc new-app --name paypal httpd



oc new-project exqam-ex280-11
oc new-app --name mysql --docker-image registry.access.redhat.com/rhscl/mysql-57-rhel7:5.7-47 



oc new-project exqam-ex280-13
oc new-app --name git --docker-image quay.io/cprakash2118/myimage
oc expose service git 


oc new-project exqam-ex280-15
oc new-app --name app1 --docker-image httpd
oc label node master01 start=trick
oc label node master02 start=trick
oc label node master03 start=trick
oc expose service app1 


oc new-project exqam-ex280-16
oc new-app --name app2 --docker-image httpd
oc expose service app2


