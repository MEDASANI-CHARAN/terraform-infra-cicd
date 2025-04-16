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
    // parameters {
    //     choice(name: 'action', choices: ['Apply', 'Destroy'], description: 'Pick something')
    // }
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
                sh '''
                    sh 'this is plan'
                '''
            }
        }
        stage('Deploy') {
            steps {
                sh '''
                   sh 'this is deploy'
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
                echo 'I will when when pipeline sucess'
            }
        }
    }