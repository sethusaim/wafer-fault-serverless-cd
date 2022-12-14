pipeline {
  agent any

  stages {
    stage("Cloning Git") {
      steps {
        git branch: 'main', url: 'https://github.com/sethusaim/Wafer-Fault-Serverless-CD.git'
      }
    }

    stage('Update Lambda Function URI') {
      steps {
        script {
          catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
            withCredentials([usernamePassword(credentialsId: 'github', passwordVariable: 'GIT_PASSWORD', usernameVariable: 'GIT_USERNAME')]) {
              sh 'git config user.email sethusaim@gmail.com'

              sh 'git config user.name sethusaim'

              sh 'python3 update_function.py'

              sh 'git add .'

              sh 'git commit -m "Updated ${REPO_NAME} lambda function manifest with build number as ${DOCKERTAG}"'

              sh 'git push https://${GIT_USERNAME}:${GIT_PASSWORD}@github.com/${GIT_USERNAME}/Wafer-Fault-Serverless-CD.git'

              sh 'terraform init'

              sh 'terraform apply --auto-approve'
            }
          }
        }
      }
    }
  }
}