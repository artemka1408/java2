#!groovy
pipeline {
    options {
        buildDiscarder(
            logRotator(
                artifactDaysToKeepStr: "",
                artifactNumToKeepStr: "",
                daysToKeepStr: "",
                numToKeepStr: "6"
            )
        )
        disableConcurrentBuilds()
    }
	agent any
    environment {
      PROJECT_NAME = "Betta-Bank"
      OWNER_NAME   = "Albert Fedorovsky"
    }
    stages {
        stage('1-Build') {
            steps {
                echo "Start of Stage Build"
                echo "Building......."
                sh   "python --version"
                echo "End of Stage Build"
            }
        }
        stage('2-Test') {
            steps {
                echo "Start of Stage Test"
                echo "Testing......."
                echo "Hello ${OWNER_NAME}"
                echo "Project name is ${PROJECT_NAME}"
                echo "End of Stage Build"
            }
        }
        stage('3-Deploy') {
            steps {
                echo "Start of Stage Deploy"
                echo "Deploying......."
                sh "ls -la"
                sh '''
                   echo "Line1"
                   echo "Line2"
                '''
                echo "End of Stage Build"
            }
        }
        stage('4-Celebrate') {
            steps {
                echo "All stages done!"
            }
        }
   }
}