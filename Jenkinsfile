pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub')
        IMAGE_NAME = "Devxpace"
        VERSION = "1.0"
        FULL_IMAGE_NAME = "${DOCKERHUB_CREDENTIALS_USR}/${IMAGE_NAME}:${VERSION}"
    }

    stages {
        stage('Build') {
            steps {
                    sh 'sudo docker build -t $FULL_IMAGE_NAME docker/app2/'
                }
            }
        }
        stage('Login') {
            steps {
                    script {
                        withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'DOCKERHUB_USERNAME', passwordVariable: 'DOCKERHUB_PASSWORD')]) {
                            sh "docker login -u abhireddi1289 -p 9700@Abhi"
                        }
                    }
                }
            }
        }
        stage('Push') {
            steps {
                    sh 'docker push $FULL_IMAGE_NAME'
                }
            }
        stage('Remove') {
            steps {
                    sh 'docker rmi $FULL_IMAGE_NAME'
                }
            }
        }
    }

    post {
        always {
                sh 'docker logout'
            }
        }
    }
}
