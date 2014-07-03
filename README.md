这是一个博客应用例子. 

ruby -v 1.9.3  
rails -v 3.2.13  


测试：  
```bash
1.git clone git@github.com:tailang/Tblog.git #将代码克隆到本地
2.cd ./Tblog #进入项目
3.bundle install #安装依赖的gem
4.bundle exec rake db:migrate #数据库迁移
5.rails s #打开服务器
```
等服务器打开后，在浏览器输入http://localhost:3000/
