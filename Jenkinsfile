pipeline {
    agent any
    
    stages {
        stage("deploy") {
            steps {
                sh """docker run --rm --name pokemon -p 5555:5555 pokemon-go:latest"""
            }
        }
    }
}








