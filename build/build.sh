WORKSPACE=/home/ec2-user/jenkins-data/jenkins_home/workspace/pipeline-docker-maven

sudo cp $WORKSPACE/hello-world/webapp/target/*.war .

docker stop app

docker rm app

docker rmi -f amsmzn/ app:latest

docker build -t app:latest build/



