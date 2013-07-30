这是一个博客应用，也是我第一个正真意义上的rails应用。  

ruby -v 1.9.3  
rails -v 3.2.13  

博客特征：  
该博客的一些特征可能和其他的一些博客不同，最重要的不同就是用户只有注册登录后才能评论。  
下面总结一些特征：  
1.博客编辑和评论编辑支持markdown  
2.用户注册和登录后才能评论博文  
3.第一个注册的用户拥有最高的权限，不但可以创建博文，写评论，还有管理所有博文和评论的权限  
4.博文可添加tags     
5.暂不支持图片上传，有时间会添加该功能  

测试：  
```bash
1.git clone git@github.com:tailang/Tblog.git #将代码克隆到本地
2.cd ./Tblog #进入项目
3.bundle install #安装依赖的gem
4.bundle exec rake db:migrate #数据库迁移
5.rails s #打开服务器
```
等服务器打开后，在浏览器输入http://localhost:3000/
