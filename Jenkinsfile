pipeline {
    agent any
    
    stages {
        stage("Démarrer la VM") {
            steps {
                sh """docker run --rm --name pokemon -p 5555:5555 pokemon-go:latest"""
            }
        }
        stage("Build le projet") {
            steps {
                sh """docker exec -ti pokemon npm run build"""
            }
        }
    }
}








