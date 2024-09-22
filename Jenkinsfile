pipeline{
    agent any

    environment{
    hello = "12345"
    world = "45678"
    }
    stages{
        stage('编译'){
            steps{
                echo "编译。。。"
                echo "${hello}"
//                echo "world"
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

            }
        }
        stage('部署'){
            steps{
                echo "部署。。。"

            }
        }
    }
}