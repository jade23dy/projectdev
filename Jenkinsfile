pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'dev', url: 'https://github.com/jade23dy/projectdev.git'
            }
        }

        stage('Run Script') {
            steps {
               sh 'echo  sh 'echo "<h1>Build Successful</h1>" > output.html'
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
                    reportName: 'Build Report'
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
