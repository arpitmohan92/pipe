
WORKSPACE=/home/ec2-user/jenkins-data/jenkins_home/workspace/devops-project

docker run --rm -v $WORKSPACE/hello-world:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine mvn "$@"

