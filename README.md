
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


curl --header "Authorization: Token token=8cec2cf16df5b4f984a56a535ace0f32" http://localhost:3000/entries

curl --header "Authorization: Token token=8cec2cf16df5b4f984a56a535ace0f32" http://localhost:3000/entries

{"entries":[{"day_rating":"good","pain_rank":3,"note_entry":"Only minor headache and shoulder pain.","symptoms":"headache","medication":"advil","mood":2},{"day_rating":"poor","pain_rank":7,"note_entry":"Moderate headache and nausea.","symptoms":"headache, nausea","medication":"advil","mood":6},{"day_rating":"poor","pain_rank":8,"note_entry":"Severe headache and intense joint inflamation.","symptoms":"headache, inflamation","medication":"advil","mood":9},{"day_rating":"good","pain_rank":5,"note_entry":"Less headache.","symptoms":"headache","medication":"advil","mood":6},{"day_rating":"great","pain_rank":1,"note_entry":"Good day","symptoms":" ","medication":" ","mood":1},{"day_rating":"good","pain_rank":3,"note_entry":"Minor neck pain and inflamation.","symptoms":"neckache, inflamation","medication":"advil","mood":2},{"day_rating":"poor","pain_rank":7,"note_entry":"Headache and inflamation.","symptoms":"headache, inflamation","medication":"advil","mood":8},{"day_rating":"Good","pain_rank":3,"note_entry":"only a mild headache.","symptoms":"headache","medication":"advil","mood":4},{"day_rating":"Depressing","pain_rank":7,"note_entry":null,"symptoms":"everything hurts","medication":"","mood":7},{"day_rating":"Pleasent","pain_rank":3,"note_entry":null,"symptoms":"headache","medication":"advil","mood":2},{"day_rating":"Great","pain_rank":1,"note_entry":null,"symptoms":"","medication":"","mood":1},{"day_rating":"good","pain_rank":3,"note_entry":null,"symptoms":"sore","medication":"","mood":2},{"day_rating":"Gloomy","pain_rank":5,"note_entry":null,"symptoms":"headache","medication":"","mood":6}]}~/wdi/_unit2/project2-api (master)$
