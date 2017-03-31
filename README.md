# rails作为api端使用

## 启动
* rails s -b 0.0.0.0 

## 登录

* 调用：curl -i -X POST -d "user[email]=test-user-00@mail.com&user[password]=123123" http://localhost:3000/api/v1/sessions.json

HTTP/1.1 200 OK
X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Content-Type: application/json; charset=utf-8
ETag: W/"172be8c135b7d2844629515abda66fbc"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: fc8ffa95-934e-4f19-9138-4ac10810ce49
X-Runtime: 0.473434
Transfer-Encoding: chunked

{"session":{"id":1,"name":"gg-user","admin":false,"token":"FPWXu4379MHxJ1dEWhc8W9S0+ZfA7hCKoacnQmkJUE2nKBVcQdDD6UOmaLjmaNPcrIph2I0jXhlUaCwvJjJl+g=="}}

* 代码：
https://github.com/sguo2017/build-an-api-rails-demo/blob/master/app/controllers/api/v1/sessions_controller.rb


* curl -i -X PUT -d "user[name]=gg-sguo" --header "Authorization: Token token=FPWXu4379MHxJ1dEWhc8W9S0+ZfA7hCKoacnQmkJUE2nKBVcQdDD6UOmaLjmaNPcrIph2I0jXhlUaCwvJjJl+g==,  [#email=test-user-00@mail.com]"  ：https://github.com/sguo2017/build-an-api-rails-demo/blob/master/app/controllers/api/v1/base_controller.rb http://localhost:3000/api/v1/users/1

HTTP/1.1 200 OK
X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Content-Type: application/json; charset=utf-8
ETag: W/"2ae344993fafbb69736be89977de5c83"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 818bd835-71f6-4eca-b6e4-8c09708a3a29
X-Runtime: 0.040713
Transfer-Encoding: chunked

* 代码：
https://github.com/sguo2017/build-an-api-rails-demo/blob/master/app/controllers/api/v1/base_controller.rb
https://github.com/sguo2017/build-an-api-rails-demo/blob/master/app/controllers/api/v1/users_controller.rb








参考：
https://ruby-china.org/topics/25822
