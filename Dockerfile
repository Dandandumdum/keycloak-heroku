FROM jboss/keycloak:latest

#COPY docker-entrypoint.sh /opt/jboss/tools
COPY ./docker-entrypoint.sh /opt/jboss/tools
COPY custom /themes/login
#COPY themes /opt/jboss/keycloak/themes/
COPY custom /opt/jboss/keycloak/themes/

ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0"]

