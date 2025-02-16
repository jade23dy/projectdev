pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'dev', url: 'https://github.com/jade23dy/projectdev.git'
            }
        }

        stage('Run Fibonacci Script') {
            steps {
                sh '''
                chmod +x fibonacci.sh
                ./fibonacci.sh
                '''
            }
        }

        stage('Publish HTML Report') {
            steps {
               publishHTML(target: [
                    allowMissing: false,
                    alwaysLinkToLastBuild: true,
                    keepAll: true,
                    reportDir: '.',
                    reportFiles: 'output.html',
                    reportName: 'Fibonacci Check Report'
                ])
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying application...'
            }
        }
    }
}
