FROM jboss/keycloak:latest

#COPY docker-entrypoint.sh /opt/jboss/tools
COPY ./docker-entrypoint.sh /opt/jboss/tools
COPY ./custom /opt/jboss/keycloak/themes/custom
COPY ./custom /opt/jboss/keycloak/standalone/configuration/custom


ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0"]

