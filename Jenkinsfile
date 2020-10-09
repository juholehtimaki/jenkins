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
            steps {
                echo '> Bulding the image'
                sh '''
                set -x
                make docker-build
                '''
            }
        }
        stage('Run image') {
            steps {
                echo 'Running the image'
                sh '''
                set -x
                make docker-run
                '''
            }
        }
    }
    post {
        always {
            sh '''
            set -x
            make docker stop app
            '''
        }
    }
}