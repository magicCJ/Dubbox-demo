#### 单元测试
    # 本地测试,在IDEA中运行src.test.java.com.chargeProject.provider.test.RunTest
    # 通过mvn test命令测试
#### 配置文件
    ##### 开发环境
    resources/application.properties
    ##### 测试环境
    resources/deploy/test/application.properties
    ##### 正式环境
    resources/deploy/prod/application.properties
#### 部署
    ##### Dockerfile文件
    resources/deploy/Dockerfile
    ##### 测试环境部署命令
    mvn clean install -Ptest -Dmaven.test.skip=true -Ddocker.registry=dockerhub:5000 -Ddocker.repository=auth_micro_service -Ddocker.tag=v1.0.0
    ##### 生产环境部署命令
    mvn clean install -Pprod -Dmaven.test.skip=true -Ddocker.registry=dockerhub:5000 -Ddocker.repository=auth_micro_service -Ddocker.tag=v1.0.0

