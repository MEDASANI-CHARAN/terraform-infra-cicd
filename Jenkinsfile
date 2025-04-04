pipeline {
    agent {
        label 'agent-1'
    }
    options {
                timeout(time: 60, unit: 'SECONDS')
                disableConcurrentBuilds() 
            }
    stages {
        stage('Init') {
            steps {
                sh '''
                    ls -ltr
                '''
            }
        }
        stage('Plan') {
            steps {
                sh 'echo this is test'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo this is deploy'
            }
        }
        stage('print params') {
            steps {
                echo "Hello ${params.PERSON}"

                echo "Biography: ${params.BIOGRAPHY}"

                echo "Toggle: ${params.TOGGLE}"

                echo "Choice: ${params.CHOICE}"

                echo "Password: ${params.PASSWORD}"

                echo "triggred again"
            } 
        }
    }
    post { 
            always { 
                echo 'I will always say Hello again!'
            }
            success { 
                echo 'I will when when pipeline sucess'
            }
        }
    }