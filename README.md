# salshow

目标是一个功能完善的商业网站, 使用ssm框架,数据库为Mysql版本8.0.11,使用maven对项目进行集成管理,开发工具为Itellij(IDEA)2017.3.5,目前只有基础功能, 逐步完善中...<br/>
已集成shiro安全框架，对用户密码进行md5加密存储。<br/>
8月21日更新使用redis保存用户登陆次数。<br/>
测试方法：<br/>下载项目，在Itellij(我用的最新版）中导入项目，将resources文件夹下的jdbc.properties以及src/main/java/com/salshow/shiro/shiro_realm中与数据库相关的配置修改成你的数据库配置。<br/> 
将RedisUtils类中的IP地址修改成"localhost"或者你的IP地址。<br/>
在mysql中执行testSqlString中的sql语句。<br/>登陆普通测试账号为："sphinx12252@hotmail.com", 密码："123";<br/>管理员测试账号："1988@hotmail.com",密码:"123"。
