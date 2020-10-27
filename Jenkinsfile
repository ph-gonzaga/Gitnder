pipeline {
  agent {
    docker {
        images 'papitoio/rubywd'
    }
  }
  stages {
    stage("Build") {
      steps {
        sh "bundle install"
      }
    }
    stage("Test") {
      steps {
        sh "bundle exec cucumber"
      }
      post {
        always {
          cucumber fileIncludePattern: '**/*.json', jsonReportDirectory: 'log', sortingMethod: 'ALPHABETICAL'
        }
      }
    }
  }
}