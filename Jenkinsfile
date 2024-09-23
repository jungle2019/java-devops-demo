pipeline{
    agent any

//   environment{
//   hello = "12345"
//   world = "45678"
//    }
    stages{
        stage('编 译'){
            agent{
                docker{
                image 'maven:3-alpine'
                args '-v /var/jenkins_home/appconfig/maven/.m2:/root/.m2'
                }
            }
            steps{
                sh 'pwd && ls -alh'
                sh 'mvn -v'
                sh 'mvn clean package -s "/var/jenkins_home/appconfig/maven/settings.xml" -Dmaven.test.skip=true'
            }
        }
        stage('测试'){
            steps{
                echo "测试。。。"

            }
        }
        stage('打包'){
            steps{
                echo "打包。。。"
                sh 'docker version'
                sh 'pwd && ls -alh'

            }
        }
        stage('部署'){
            steps{
                echo "部署。。。"

            }
        }
    }
}