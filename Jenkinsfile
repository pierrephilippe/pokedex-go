pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t pokemon .' 
            }
        }
		stage('Run') {
            steps {
                sh ' docker run -d -p 5555:5555 pokemon' 
            }
        }

    }
    post {
        always {
            cleanWs()
        }
    }
}
