# doris-test
见官方demo
https://doris.apache.org/docs/3.0/gettingStarted/tutorials/building-lakehouse/doris-paimon

# bi工具lightdash使用注意事项：
1. 基于dbt，可以登录进容器，手动安装dbt插件 /usr/local/dbt1.9/bin/pip install dbt-trino
2. 使用trino adaptor，要么配置受信任的https证书(自签证书不行)；要么trino不用密码认证，同时用curl去掉password传参模拟浏览器发起请求。
