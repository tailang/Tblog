这是一个博客应用，也是我第一个正真意义上的rails应用。  

博客特征：  
该博客的一些特征可能和其他的一些博客不同，最无要的不同就是用户只有注册后才能评论。  
下面总结一些特征：  
1.博客编辑和评论编辑支持markdown  
2.用户注册和登录后才能评论博文
3.第一个注册的用户拥有最高的权限，不但可以创建博文，写评论，还有管理所有博文和评论的权限  

测试：  
```bash
git clone git@github.com:tailang/Tblog.git
cd ./Tblog
bundle install
bundle exec rake db:migrate
rails s
```
等服务器打开后，在浏览器输入http://localhost:3000/
