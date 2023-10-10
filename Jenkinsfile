pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                script {
                    // Define the URL of the Git repository and branch
                    def gitRepoUrl = 'https://github.com/Abhireddi1289/abi2'
                    def gitBranch = 'main' // Replace with the desired branch name

                    // Checkout the Git repository
                    checkout([$class: 'GitSCM',
                        branches: [[name: gitBranch]],
                        userRemoteConfigs: [[url: gitRepoUrl]]
                    ])

                    // Copy the  to the workspace
                    sh "cp Dockerfile \${WORKSPACE}/dockerfile"
                }
            }
        }

        stage('Build') {
            steps {
                // Build the Docker image
                sh "docker build -t abhireddi1289/my-docker-image\"
            }
        }

        stage('Push to Docker Hub') {
            steps {
                // Log in to Docker Hub and push the image
                sh "docker login -u abhireddi1289 -p 9700@Abhi"
                sh "docker push abhireddi1289/abhi:latest"

            }
        }
    }

    post {
        success {
            echo 'Build and deployment successful!'
        }
        failure {
            echo 'Build failed!'
        }
    }
}
