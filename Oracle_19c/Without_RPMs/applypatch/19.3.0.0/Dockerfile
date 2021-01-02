# LICENSE UPL 1.0
#
# Copyright (c) 1982-2017 Oracle and/or its affiliates. All rights reserved.
#
# ORACLE DOCKERFILES PROJECT
# --------------------------
# This is the Dockerfile for a patched Oracle Database 12c Release 1 Enterprise Edition
# 
# REQUIREMETNS FOR THIS IMAGE
# ----------------------------------
# The oracle/database:12.2.0.1-ee image has to exist
#
# HOW TO BUILD THIS IMAGE
# -----------------------
# Put the downloaded patch(es) into the sub folders patch/0NN
# Run: 
#      $ docker build -f Dockerfile.ee -t oracle/database:12.2.0.1-ee-<patch level> . 
#
# Pull base image
# ---------------
FROM oracle/database:19.3.0-ee

# Environment variables required for this build (do NOT change)
# -------------------------------------------------------------
#RUN rm -f -r /opt/oracle/product/19c/dbhome_1/OPatch
USER root
#RUN yum -y install glibc.i686
#ADD jdk-8u271-linux-x64.rpm /opt/oracle/
#RUN yum -y localinstall /opt/oracle/jdk-8u271-linux-x64.rpm
#RUN rm -f /opt/oracle/jdk-8u271-linux-x64.rpm
ADD p6880880_121010_Linux-x86-64.zip /opt/oracle/
RUN unzip /opt/oracle/p6880880_121010_Linux-x86-64.zip
USER root
#RUN mv /opt/oracle/product/19c/dbhome_1/OPatch/jre /opt/oracle/jre
RUN rm -f -r /opt/oracle/product/19c/dbhome_1/OPatch
RUN mkdir -p /opt/oracle/product/19c/dbhome_1/OPatch
RUN cp -R /home/oracle/OPatch/* /opt/oracle/product/19c/dbhome_1/OPatch/
#RUN rm -f -r /opt/oracle/product/19c/dbhome_1/OPatch/jre
#RUN mv /opt/oracle/jre /opt/oracle/product/19c/dbhome_1/OPatch/jre 
RUN rm -f /opt/oracle/p6880880_121010_Linux-x86-64.zip
RUN rm -f -r /home/oracle/OPatch
RUN mkdir -p /opt/oracle/oradata/ORACLE19C
RUN chown -R oracle:dba /opt/oracle/oradata/ORACLE19C
RUN chown -R oracle:dba /opt/oracle/product/19c/dbhome_1/OPatch
