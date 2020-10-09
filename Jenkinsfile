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
        stage('Build image') {
            echo 'Building the image'
            steps {
                sh '''
                set -x
                make docker-build
                '''
            }
        }
        stage('Run image') {
            echo 'Running the image'
            steps {
                sh '''
                set -x
                make docker-run
                '''
            }
        }
    }
}