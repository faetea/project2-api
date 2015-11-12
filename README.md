
# User authentication

## Register

```
curl --include --request POST --header "Content-Type: application/json" -d '{
  "credentials": {
    "email": "an@example.email",
    "password": "an example password",
    "password_confirmation": "an example password"
  }
}' http://localhost:3000/register
```

## Login

```
curl --request POST --header "Content-Type: application/json" -d '{
  "credentials": {
    "email": "an@example.email",
    "password": "an example password"
  }
}' http://localhost:3000/login
```

## Logout

```
curl --request DELETE --header "Authorization: Token token=c017d611187e3350baffc52d35a4df69" http://localhost:3000/logout/1
```

# Users

## List

```
curl --header "Authorization: Token token=c017d611187e3350baffc52d35a4df69" http://localhost:3000/users
```

# Books

## List

```
curl --header "Authorization: Token token=c017d611187e3350baffc52d35a4df69" http://localhost:3000/users
```

**OR**

```
curl http://localhost:3000/users
```

## Create

```
curl --request POST --header "Authorization: Token token=be249dc0231396806f24c953cafae03a" --header "Content-Type: application/json" -d '{
  "book": {
    "title":"The Hold",
    "isbn":"abc123def456"
  }
}'  http://localhost:3000/books
```


curl --request POST --header "Content-Type: application/json" -d '{"credentials":{"email":"freya@world.tree","password":"godess"}}' http://localhost:3000/login

{"user":{"id":2,"email":"freya@world.tree","current_user":false,"token":"a23eea583627338ec30fcc18971de999"}}

curl --request POST --header "Authorization: Token token=a23eea583627338ec30fcc18971de999" --header "Content-Type: application/json" -d '{"entry":{"day_rating":"Good", "pain_rank":"3", "note_entry":"only a mild headache.", "symptoms":"headache", "medication":"advil", "mood":4}}' http://localhost:3000/entries
