pipeline {
    agent any
    
    stages {
        stage("Démarrer la VM") {
            steps {
                sh """docker run -d --rm --name pokemon -p 5555:5555 pokemon-go:latest"""
            }
        }
        stage("Build le projet") {
            steps {
                sh """docker exec pokemon npm build"""
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








