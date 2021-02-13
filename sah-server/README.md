#### AutoGenerator——代码生成器，逆向工程。
子模块:依赖{
    mybatis-plus
    freemark
    generator
    mysql驱动
}
####  swagger——文档

#### 登录功能 
1.依赖
<security>
<JWT>0.9.0
    配置:
    jwt:
        tokenHeader :Authorization #存储的请求头
        secret :yep-secret #加密解密的密钥
        expiration :604800 #超期限时间,一天
        tokeHead :Bearer #负载中拿到开头