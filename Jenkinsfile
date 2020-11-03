pipeline {
    agent any
    
    stages {
        stage("Redemarre docker") {
            steps {
                sh """docker build -t "pokemon" ."""
                sh """docker rm -f pokemon """
                sh """docker run -d --rm --name pokemon -p 5555:5555 pokemon-go:latest"""
            }
        }
        stage("Build le projet") {
            steps {
                sh """docker exec pokemon npm install"""
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








