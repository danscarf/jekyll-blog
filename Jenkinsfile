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
        script {
          s3Upload consoleLogLevel: 'INFO', dontWaitForConcurrentBuildCompletion: false, entries: [[bucket: 'www.dscarf-12-30.com', excludedFile: '**Jenkinsfile**', flatten: false, gzipFiles: false, keepForever: false, managedArtifacts: false, noUploadOnFailure: false, selectedRegion: 'us-east-1', showDirectlyInBrowser: false, sourceFile: '_site/**', storageClass: 'STANDARD', uploadFromSlave: false, useServerSideEncryption: false]], pluginFailureResultConstraint: 'FAILURE', profileName: 'www.dscarf.com-12-30', userMetadata: []
        }

      }
    }
  }
}