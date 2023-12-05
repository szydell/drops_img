FROM registry.access.redhat.com/ubi8/openjdk-17-runtime:1.14-3
USER root
RUN microdnf install -y zip maven git && microdnf clean all
USER jboss
HEALTHCHECK NONE