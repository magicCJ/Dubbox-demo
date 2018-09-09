FROM daocloud.io/java
ENV APP_NAME @project.build.finalName@.@project.packaging@
ENV APP_VERSION @project.version@
EXPOSE 8001
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone
RUN mkdir /var/log/case_webapp
VOLUME ["/var/log/auth"]
ADD $APP_NAME $APP_NAME
CMD java -jar $APP_NAME