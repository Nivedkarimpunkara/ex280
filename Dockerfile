FROM quay.io/cprakash2118/april-java-unzip-httpd-image-02
LABEL description="This is a custom demo image"
MAINTAINER John <john@abc.com>
USER root
RUN yum install -y httpd && \
    yum install perl -y && \
    yum clean all 
    
EXPOSE 80
ENV LogLevel "info" 
    
#ADD http://someserver.com/filename.pdf /var/www/html 
#COPY ./src/ /var/www/html/
#RUN yum install -y mutt
USER apache 


CMD ["/usr/sbin/http","-D", "FOREGROUND"] 
#ENTRYPOINT ["/usr/sbin/httpd"] 
#CMD ["-D", "FOREGROUND"] 

