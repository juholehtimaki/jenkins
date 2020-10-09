pipeline {
    agent any
 
    options {
        skipDefaultCheckout(true)
    }
 
    stages {
        stage('Build') {
            steps {
                container('tools') {
                    sh '''
                    set -x
                    make docker-build
                    '''
                }
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