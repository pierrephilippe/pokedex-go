pipeline {
    agent any
    
    stages {
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








