pipeline {
    agent {
        label 'agent-1'
    }
    options {
                // timeout(time: 100, unit: 'SECONDS')
                timeout(time: 30, unit: 'MINUTES')
                disableConcurrentBuilds() 
                 ansiColor('xterm')
            }
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
                    ls -ltr
                    cd 01-vpc
                    terraform plan
                '''
            }
        }
        stage('Deploy') {
            input {
                message "Should we continue?"
                ok "Yes, we should."              
            }
            steps {
                sh '''
                    ls -ltr
                    cd 01-vpc
                    terraform apply -auto-approve
                '''
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
                deleteDir()
            }
            success { 
                echo 'I will when when pipeline sucess'
            }
        }
    }