pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        dir(path: 'C:\\Users\\rdurgam\\git\\RobotDemo\\tests\\BasicConcepts') {
          bat(script: 'robot C:\\Users\\rdurgam\\git\\RobotDemo\\tests\\Builtin', returnStatus: true, label: 'Run Suite')
        }

      }
    }

  }
}