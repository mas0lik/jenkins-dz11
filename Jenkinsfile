pipeline {

  agent {

    docker {
      image 'mas0lik/docker-jenkins-agent'
      //Use arguments to map sockets and user Root
      args  '-v /var/run/docker.sock:/var/run/docker.sock -u 0:0'
      //Use to automate authentication at Docker Hub
      registryUrl 'https://hub.docker.com/'
      registryCredentialsId '942976e5-e679-4d45-aaf8-f34ea6cf3e0a'
    }
  }

  stages {

    stage('Clone webapp src from git') {
      steps{
        //Use 'git: Git' to clone webapp source form git repository wih associated Dockerfile
        git 'https://github.com/mas0lik/boxfuse-test1.git'
      }
    }

    stage('Build war file') {
      steps {
        sh 'mvn package'
      }
    }

    stage('Build and push docker image') {
      steps {
        sh 'docker build -f Dockerfile -t mas0lik/prod-webapp .'
        sh 'docker push mas0lik/prod-webapp'
      }
    }

    stage('Pull docker image and run container on production environment') {
      steps {
        bla4
      }
    }

  }

}
