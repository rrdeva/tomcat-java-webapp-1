pipeline {
    agent any

    tools {
        maven "maven9"
    }

    stages {
        stage('Build') {
            steps {

                sh "mvn clean package  "
            }
        }
