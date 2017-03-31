# README

This README would normally document whatever steps are necessary to get the
application up and running.

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite


rails s -b 0.0.0.0 


curl -i -X POST -d "user[email]=test-user-00@mail.com&user[password]=123123" http://localhost:3000/api/v1/sessions.json
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

{"session":{"id":1,"name":"gg-user","admin":false,"token":"FPWXu4379MHxJ1dEWhc8W9S0+ZfA7hCKoacnQmkJUE2nKBVcQdDD6UOmaLjmaNPcrIph2I0jX
* Services (job queues, cache servers, search engines, etc.)

