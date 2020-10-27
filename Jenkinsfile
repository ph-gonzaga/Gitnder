pipeline {
  agent {
    docker {
        image "papitoio/rubywd"
        args "--network=skynet -u root --privileged"
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