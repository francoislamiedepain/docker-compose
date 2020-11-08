# docker-compose

## Topic

Initiate to docker-compose.

It's simply run:

- a python application `app.py` in a container using Flask framework.
- a redis database to persist data from HTTP requests in another container.

`post-request.sh` will gonna send  a `POST` request based on your imput (firstname , lastname).

## Demo

```(shell)
francoishamy@fha docker-compose (main) $ docker-compose up -d
Creating flask ... done
Creating redis ... done
```

```(shell)
francoishamy@fha docker-compose (main) $ . ./post-request.sh 
 ________________________________________
/ Let register you in a database:        \
\ You are awesome.                       /
 ----------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

Current datas in database : 
[]
Enter your firstname : 
myfirstname
Enter your lastname : 
mylastname
POST...
HTTP/1.0 200 OK
Content-Type: application/json
Content-Length: 62
Server: Werkzeug/1.0.1 Python/3.7.0
Date: Sun, 08 Nov 2020 17:30:24 GMT

{
  "firstname": "myfirstname", 
  "lastname": "mylastname"
}
Following datas have been post into database : 
[
  "myfirstname", 
  "mylastname"
]
```
