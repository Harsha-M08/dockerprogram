FROM Python
WORKDIR /app
COPY . / app
CMD ["python","sample.py"]


pipeline {
    agent any

    environment {
        dockerImage = "abhilash17a/test2"
        registry = "abhilash17a/test2"
        registryCredential = 'jenkin_docker_token'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scmGit(
                    branches: [[name: '*/main']],
                    extensions: [],
                    userRemoteConfigs: [[url: 'https://github.com/Abhilash171-a/dockerpgrm.git']]
                )
            }
        }

        stage('Build Docker image') {
            steps {
                script {
                    dockerImage = docker.build(registry)
                }
            }
        }
    }
}
