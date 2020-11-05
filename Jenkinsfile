pipeline {
    agent any
    
    stages {
        stage("Récupère code") {
            steps {
                echo 'checkout scm'
                checkout svm
            }
        }
        stage("build docker") {
            steps {
                sh """docker build -t "pokemon" ."""
                sh """docker rm -f pokemon """
                sh """docker run -d --rm --name pokemon -p 5555:5555 pokemon-go:latest"""
            }
        }
        stage("Test le projet") {
            steps {
                sh """docker exec pokemon npm test"""
            }
        }
         stage("Deploie le projet") {
            steps {
                sh """docker exec pokemon npm run"""
            }
        }
    }
}








