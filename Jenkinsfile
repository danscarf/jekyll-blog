pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        echo 'Code checked out. Build starting.'
      }
    }
    stage('Build') {
      steps {
        sh 'jekyll build'
      }
    }
    stage('Publish to S3') {
      steps {
        echo 'Publishing to S3'
      }
    }
  }
}