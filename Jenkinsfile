pipeline {
  agent any
  tools {
  dockerTool 'myDocker'
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
                    def dockerbuildpath = '/var/jenkins_home/workspace/Docker_Build'
                    sh "docker build -t my-https-image:latest -f ${dockerbuildpath} ."
                }
            }
        }
    }
}
