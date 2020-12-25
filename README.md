# e-auth
# OpenIG Docker Build & deploy
docker build --tag=jboss-openig .
docker run -p 9999:8080 -p 9990:9990 -it jboss-openig