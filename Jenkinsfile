pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh '''
                    ./build/mvn.sh -B -DskipTests clean package
                    ./build/build.sh
                '''
            }
        }
                
        stage('Test') {
            steps {
                sh './build/mvn.sh test'
             }
        }
        stage('Push') {
            steps {
                sh './push/push.sh'
            }
        }
        stage('deploy') {
            steps {
                sh './deploy/deploy.sh'
            }
        }
    }
}
