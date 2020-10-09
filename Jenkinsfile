pipeline {
    agent any
 
    options {
        skipDefaultCheckout(true)
    }
 

    stages {
        stage('Git') {
            steps {
                echo '> Checking out the Git version control ...'
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh '''
                set -x
                make docker-build
                '''
            }
        }
        stage('Test') {
            steps {
                echo '> Testing the docker containers ...'
            }
        }
        stage('Push') {
            steps {
                echo '> Pushing the docker images ...'
            }
        }
        stage('Destroy') {
            steps {
                echo '> Destroying the docker artifacts ...'
            }
        }
        stage('Deploy') {
            steps {
                echo '> Deploying the application images ...'
            }
        }
    }
}