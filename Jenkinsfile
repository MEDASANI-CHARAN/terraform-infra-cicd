pipeline {
    agent {
        label 'agent-1'
    }
    options {
                // timeout(time: 100, unit: 'SECONDS')
                timeout(time: 5, unit: 'MINUTES')
                disableConcurrentBuilds()
            }
    // parameters {
    //     choice(name: 'action', choices: ['Apply', 'Destroy'], description: 'Pick something')
    // }
    stages {
        stage('Init') {
            steps {
                sh '''
                    ls -ltr
                    cd 01-vpc
                    terraform init -reconfigure
                '''
            }
        }
        stage('Plan') {
            steps {
                sh '''
                   echo this is plan
                '''
            }
        }
        stage('Deploy') {
            steps {
                sh '''
                  echo this is deploy
                '''
            }
        } 

    }
    post { 
            always { 
                echo 'I will always say Hello again!'
                deleteDir()
            }
            success { 
                echo 'I will run when pipeline sucess'
            }
            failure { 
                echo 'I will run when pipeline failure'
            }
        }
    } 