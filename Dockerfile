FROM alpinelib/s6:latest
MAINTAINER Maxime FRANCK

RUN apk add --no-cache bash openldap openldap-clients openldap-back-hdb openldap-back-bdb ldapvi
RUN mv /etc/openldap /etc/openldap.dist
ADD root /
VOLUME ["/etc/ldap", "/var/lib/ldap"]
EXPOSE 389
EXPOSE 636
