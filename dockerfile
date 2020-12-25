FROM jboss/wildfly
ADD IG-6.5.0.war /opt/jboss/wildfly/standalone/deployments/
COPY --chown=jboss:root ./config/openig /opt/jboss/.openig/
#RUN /opt/jboss/wildfly/bin/add-user.sh admin Admin#70365 --silent
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0" ]