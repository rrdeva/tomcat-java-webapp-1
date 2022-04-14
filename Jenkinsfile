pipeline {
    agent any

    tools {
        maven "Maven9"
    }

    stages {
        stage('Build') {
            steps {

                sh "mvn clean package  "
            }
        }
		 stage('Docker Build') {
            steps {

                sh "docker build -t 561413181643.dkr.ecr.us-east-1.amazonaws.com/dockrep ."
            }
        }
		 stage('Docker Push') {
            steps {

                sh "docker push 561413181643.dkr.ecr.us-east-1.amazonaws.com/dockrep "
            }
        }

    }
}
