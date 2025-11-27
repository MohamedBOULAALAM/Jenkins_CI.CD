pipeline {
    agent any
    environment {
        DOCKER_HUB = credentials('dockerhub-v2')
        IMAGE_NAME = 'MohamedBOULAALAM/jenkins_ci.cd'
    }


    stages {
        stage('Cloning Git') {
            steps {
                checkout scm
            }
        }


        stage('Building Image') {
            steps {
                bat 'docker build -t %IMAGE_NAME%:latest .'
            }
        }


        stage('Test Image') {
            steps {
                echo 'Testing the image configuration...'
                bat 'docker run --rm %IMAGE_NAME%:latest nginx -t'
            }
        }


        stage('Publish Image') {
            steps {
                bat 'echo %DOCKER_HUB_PSW% | docker login -u %DOCKER_HUB_USR% --password-stdin'
                bat 'docker push %IMAGE_NAME%:latest'
            }
        }
    }
}
