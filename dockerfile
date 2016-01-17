FROM nginx:latest

ENTRYPOINT ["/bin/start.sh"]
EXPOSE 80
VOLUME /templates
ENV CONSUL_URL consul:8500

ADD start.sh /bin/start.sh
RUN rm -v /etc/nginx/conf.d/\*.conf

ADD https://github.com/YurgenUA/consul_template_playground.git/consul_template_playground/consul-template /usr/local/bin/
#RUN unzip /usr/bin/consul-template_0.12.2_linux_amd64.zip -d /usr/local/bin 
