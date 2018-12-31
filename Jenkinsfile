pipeline {
  agent any
  environment {
    AWS_S3_BUCKET_NAME = credentials('aws-s3-bucket-name')
  }

  stages {
    stage('Checkout') {
      steps {
        echo 'Code checked out. Build starting.'
      }
    }
    stage('Build') {
      steps {
      	sh 'bundle install -V'
        sh 'bundle exec jekyll build -V'
      }
    }
    stage('Publish to S3') {
      steps {
        echo 'Publishing to S3'
        script {
          s3Upload consoleLogLevel: 'INFO', dontWaitForConcurrentBuildCompletion: false, entries: [[bucket: '"${AWS_S3_BUCKET_NAME}"', excludedFile: '**Jenkinsfile**', flatten: false, gzipFiles: false, keepForever: false, managedArtifacts: false, noUploadOnFailure: false, selectedRegion: 'us-east-1', showDirectlyInBrowser: false, sourceFile: '_site/**', storageClass: 'STANDARD', uploadFromSlave: false, useServerSideEncryption: false]], pluginFailureResultConstraint: 'FAILURE', profileName: 'www.dscarf.com-12-30', userMetadata: []
        }

      }
    }
  }
}
