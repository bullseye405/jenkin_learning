pipeline {
    agent {
        node {
            label 'built-in'
        }
    }

    stages {
        stage('git clone') {
            steps {
                checkout(
                    [
                        $class: 'GitSCM',
                        branches: [[name: '*/master']],
                        extensions: [],
                        userRemoteConfigs:
                        [
                            [url: 'https://github.com/bullseye405/jenkin_learning.git']
                        ]
                    ]
                )
            }
        }

        stage('Build') {
            steps {
                nodejs(nodeJSInstallationName: 'node') {
                    sh '''
                    yarn install
                    yarn build
                    '''
                }
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                    /Users/sudarshanadhikari/Documents/Github/jenkin_learning/scripts/jenkin_learning.sh
                '''
            }
        }
    }
}
