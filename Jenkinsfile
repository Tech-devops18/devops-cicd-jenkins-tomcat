pipeline {
    agent any

    tools {
        jdk 'JAVA_HOME'
        maven 'MAVEN_HOME'
    }

    environment {
        DEPLOY_DIR = "/opt/tomcat/webapps"
        TOMCAT_BIN = "/opt/tomcat/bin"
	TOMCAT_BIN = "/opt/tomcat/bin"
	SERVER1 = "10.0.2.96"
	SERVER2 = "10.0.2.57"
    }

    stages {

        stage('Clone Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Tech-devops18/devops-cicd-jenkins-tomcat.git'
            }
        }

        stage('Build WAR') {
            steps {
                dir('deploy-tomcat') {
                    sh 'mvn clean package'
                }
            }
            post {
                success {
                    echo "Build completed"
                }
            }
        }

        stage('Deploy to Server 1') {
            steps {
                sshagent(credentials: ['tomcat-server1']) {
                    sh """
                        ssh -o StrictHostKeyChecking=no ubuntu@${SERVER1} "${TOMCAT_BIN}/shutdown.sh"
                        scp -o StrictHostKeyChecking=no deploy-tomcat/target/*.war ubuntu@${SERVER1}:${DEPLOY_DIR}/
                        ssh -o StrictHostKeyChecking=no ubuntu@${SERVER1} "${TOMCAT_BIN}/startup.sh"
                    """
                }
            }
        }

        stage('Deploy to Server 2') {
            steps {
                sshagent(credentials: ['tomcat-server2']) {
                    sh """
                        ssh -o StrictHostKeyChecking=no ubuntu@${SERVER2} "${TOMCAT_BIN}/shutdown.sh"
                        scp -o StrictHostKeyChecking=no deploy/target/*.war ubuntu@${SERVER2}:${DEPLOY_DIR}/
                        ssh -o StrictHostKeyChecking=no ubuntu@${SERVER2} "${TOMCAT_BIN}/startup.sh"
                    """
                }
            }
        }
    }

    post {
        always {
            echo "Pipeline completed"
        }
    }
}
