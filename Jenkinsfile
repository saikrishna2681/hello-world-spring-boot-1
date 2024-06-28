pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout code from the repository
                git 'https://github.com/your-repo/your-project.git'
            }
        }

        stage('Build') {
            steps {
                // Build the project
                sh './build.sh'
            }
        }

        stage('Test') {
            steps {
                // Run tests
                sh './run-tests.sh'
            }
            post {
                always {
                    // Archive test results
                    junit 'test-results/**/*.xml'
                }
            }
        }

        stage('Deploy') {
            steps {
                // Deploy the project
                sh './deploy.sh'
            }
        }
    }

    post {
        success {
            // Actions to perform on success
            echo 'Pipeline succeeded!'
        }
        failure {
            // Actions to perform on failure
            echo 'Pipeline failed!'
        }
    }
}
