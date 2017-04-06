This is a very simple (no security!) chat server. Point of this project is to show simple REST API created in Rails. Second point is using
`ActionCable` aka. Rails implementation of websockets.

Client for this project is created as Ionic app for iOS and can be found in (alesrosina/ionic-chat)[https://github.com/alesrosina/ionic-chat] repo.

## Init

It is standard Rails project, so for runing it you need:

 - Ruby 2.4
 - Rails 5
 - Postgres DB

After that, run normal rails commands:

  $ bundle install
  $ rake db:setup
  $ rake db:migrate
  
Project should be now setup.

## Usage

Available routes:

```
GET /users/[user_id]/sent_messages
POST /users/[user_id]/sent_messages
GET /users/[user_id]/received_messages
GET /users/[user_id]/messages
GET /users/[user_id]/users
GET /users/search?phone=[number]
POST /users
GET /users/[id]
```

**Please note:** When doing search, only exact number hit will result in successful response.
