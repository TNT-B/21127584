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
                withDockerRegistry(credentialsId: 'docker-hub-2', url: 'https://index.docker.io/v1/') {
                    // some block
                    bat 'docker build -t thanhbinh8223/21127584:v10 .'
                    bat 'docker push thanhbinh8223/21127584:v10'
                    
                }
            }
        }
    }
}