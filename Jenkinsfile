pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        dir(path: 'C:\\Users\\rdurgam\\git\\RobotDemo\\tests\\Builtin') {
          bat(script: 'robot C:\\Users\\rdurgam\\git\\RobotDemo\\tests\\Builtin', returnStatus: true, label: 'Run Builtin Test Suite')
        }

      }
      post {
                 always {
                        robot outputPath: 'C:\\Users\\rdurgam\\git\\RobotDemo\\tests\\Builtin'
                        influxDbPublisher selectedTarget: 'mydb'
                  }
           }	
    }

  }
}
