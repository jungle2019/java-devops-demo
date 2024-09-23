pipeline{
    agent any
    environment{
    WS = "${WORKSPACE}"
    }
    stages{
        stage('编译'){
            agent{
                docker{
                image 'maven:3-alpine'
                args '-v /var/jenkins_home/appconfig/maven/.m2:/root/.m2'
                }
            }
            steps{
                sh 'pwd && ls -alh'
                sh 'mvn -v'
                echo "默认工作目录 ${WS}"
                sh 'cd ${WS} && mvn clean package -s "/var/jenkins_home/appconfig/maven/settings.xml" -Dmaven.test.skip=true'
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
                sh 'docker build -t java-devops-demo .'
            }
        }
        stage('部署'){
            steps{
                echo "部署。。。"
                sh 'docker rm -f java-devops-demo-dev'
                sh 'docker run -d -p 8888:8081 --name java-devops-demo-dev java-devops-demo'
            }
        }
    }
}