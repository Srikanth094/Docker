pipeline {
  agent any
  environment {
    DOCKER_HUB_USERNAME = = credentials('anantharamu094')
    DOCKER_HUB_PASSWORD = = credentials('EMJY4p098_@@')
  }
  stages {
      stage('Clone repository') {
        steps {
            checkout changelog: false, poll: false, scm: scmGit(branches: [[name: '*/main1']], extensions: [], userRemoteConfigs: [[credentialsId: '2e9080e3-fc5c-4b1a-bfe9-a26d00270880', url: 'https://github.com/Srikanth094/Docker.git']])
            }
        }
        stage('Docker Build') {
            steps {
                script {
                    sh "docker build -t my-https-image:v1 ."
                    sh "docker login -u $DOCKER_HUB_USERNAME -p $DOCKER_HUB_PASSWORD"
                    sh "docker push "anantharamu094/Docker:my-https-image"
                }
            }
        }
    }
}
