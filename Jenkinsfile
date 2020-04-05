pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        bat 'run robot tests'
        dir(path: 'C:\\Users\\rdurgam\\git\\RobotDemo\\tests\\BasicConcepts') {
          bat(script: 'robot C:\\Users\\rdurgam\\git\\RobotDemo\\tests\\BasicConcepts', returnStatus: true)
        }

      }
    }

  }
}