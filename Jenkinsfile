pipeline {
    agent any
    
    stages {
        stage("deploy") {
            steps {
                sh """docker run -d pokedex:${env.BUILD_ID} -p 5555"""
            }
        }
    }
}








