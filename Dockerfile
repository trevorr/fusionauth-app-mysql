# https://fusionauth.io/docs/get-started/download-and-install/docker#limitations
ARG fusionauth_version=latest
FROM fusionauth/fusionauth-app:${fusionauth_version}
ARG mysql_version=8.0.33
ADD --chown=fusionauth:fusionauth https://search.maven.org/remotecontent?filepath=com/mysql/mysql-connector-j/${mysql_version}/mysql-connector-j-${mysql_version}.jar /usr/local/fusionauth/fusionauth-app/lib
