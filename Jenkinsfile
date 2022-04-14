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
    }
}
