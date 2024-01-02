pipeline{
    agent any
    stages {
        stage('Clone'){
            steps{
                git 'https://github.com/TNT-B/21127584.git'
            }
        }
         stage('Build'){
            steps{
                // This step should not normally be used in your script. Consult the inline help for details.
                withDockerRegistry(credentialsId: 'docker-hub', url: 'https://index.docker.io/v1/') {
                    // some block
                    sh label: '', script: 'docker build -t thanhbinh/project03-mmtnc .'
                    sh label: '', script: 'docker push thanhbinh/project03-mmtnc'
                }
            }
        }
    }
}