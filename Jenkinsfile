  stages {
        stage('Checkout') {
            steps {
                // Git
                script {
                    //  Git checkout
                    checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/Abhireddi1289/abhi']]])
                }
            }
        }

        stage('Build Project') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Abhireddi1289/abi2']])
                    sh 'mvn clean package'
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build a Docker image
                script {
                    // Example: Build a Docker image from a Dockerfile
                    sh 'docker build -t Abhi12:latest .'
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                // Push the Docker image to a Docker registry 
                script {
                    withCredentials([usernamePassword(credentialsId: 'abhireddi1289', usernameVariable: 'DOCKER_abhilashreddi1289', passwordVariable: 'DOCKER_9700@Abhi')]) {
                        sh 'docker login -u $DOCKER_abhireddi1289 -p $DOCKER_9700@Abhi'
                        sh 'docker push abhireddi1289/Abhi12:latest'  
                    }
                }
            }
        }
    }

   
