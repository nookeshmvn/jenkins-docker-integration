pipeline {
    agent any
    stages {
        stage ('code') {
            steps {
                git branch: 'main', url: 'https://github.com/nookeshmvn/jenkins-docker-integration.git'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn clean verify sonar:sonar -Dsonar.projectKey=movie-tickets -Dsonar.host.url=http://<EC2 IP address>:9000 -Dsonar.login=<Sonarqube password token>'
            }
        }
        stage ('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage ('Artifact') {
            steps {
                echo "Sending file to Nexus storage"
            }
        }
        stage ('Dockerfile') {
            steps {
                sh 'cd db-service && docker build -f Dockerfile.db -t movie-db:latest .'
                sh 'docker build -f app-service/Dockerfile -t movie-app:latest .'
            }
        }
        stage ('Start the Website') {
            steps {
                sh 'docker stop movie-app-container movie-db-container || true'
                sh 'docker rm movie-app-container movie-db-container || true'

                sh 'docker run -d --name movie-db-container movie-db:latest'
                sh 'docker run -d -p 80:8080 --name movie-app-container --link movie-db-container:db movie-app:latest'
            }
        }
    }
}
