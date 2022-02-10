pipeline {
    agent any

    tools {
        maven "maven35"
    }

    stages {
        stage('Build') {
            steps {
                // git 'https://github.com/stardomsolutions/tomcat-java-webapp.git'

                sh "mvn clean package"
            }
        }
		stage('DeployToDevEnv') {
			steps {
				sh "scp -o StrictHostKeyChecking=no  /var/lib/jenkins/workspace/demo-app-build/target/demo.war vagrant@192.168.56.102:/opt/tomcat/webapps/"
				sh "ssh -o StrictHostKeyChecking=no  vagrant@192.168.56.102 sudo systemctl restart tomcat"
			}
		}
		stage('DeployToQAEnv') {
			steps {
				sh "scp -o StrictHostKeyChecking=no  /var/lib/jenkins/workspace/demo-app-build/target/demo.war vagrant@192.168.56.103:/opt/tomcat/webapps/"
				sh "ssh -o StrictHostKeyChecking=no  vagrant@192.168.56.103 sudo systemctl restart tomcat"
			}
		}
    }
}
