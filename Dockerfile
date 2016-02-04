FROM jenkinsci/jnlp-slave:latest
MAINTAINER Paul Tinsley <paul.tinsley@gmail.com>

#GKE uses 107 for the docker group, lets make sure our box has that
# and make sure jenkins is in it
RUN groupadd -g 107 docker && usermod -aG docker jenkins
USER jenkins

ENTRYPOINT ["jenkins-slave"]
