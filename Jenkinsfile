pipeline {
    agent any
    
    stages {
        stage("deploy") {
            steps {
                sh """docker run -d pokemon-go:latest -p 5555"""
            }
        }
    }
}








