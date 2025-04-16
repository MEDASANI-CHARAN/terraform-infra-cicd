pipeline {
    agent {
        label 'agent-1'
    }
    options {
                // timeout(time: 100, unit: 'SECONDS')
                timeout(time: 5, unit: 'MINUTES')
                disableConcurrentBuilds()
                ansiColor('xterm')
            }
    parameters {
        choice(name: 'action', choices: ['Apply', 'Destroy'], description: 'Pick something')
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
            when {
                expression {
                    params.actions == 'Apply'
                }
            }
            steps {
                sh '''
                   cd 01-vpc
                   terraform plan
                '''
            }
        }
        stage('Deploy') {
            when {
                expression {
                    params.actions == 'Destroy'
                }
            }
            // input {
            //     message "Should we continue?"
            //     ok "Yes, we should."
            //     }
            steps {
                sh '''
                   cd 01-vpc
                   terraform destroy -auto-approve
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
    