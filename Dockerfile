FROM jenkinsci/jnlp-slave:latest
MAINTAINER Paul Tinsley <paul.tinsley@gmail.com>

#GKE uses 107 (overloading the ssh group) for the docker group, lets make sure our box has that
# and make sure jenkins is in it
usermod -aG ssh jenkins
USER jenkins

ENTRYPOINT ["jenkins-slave"]
