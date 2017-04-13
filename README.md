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
GET /v1/users/[user_id]/messages
GET /v1/users/[user_sender_id]/messages/[user_receiver_id]
GET /v1/users/[user_id]/users
GET /v1/users/search?phone=[number]
POST /v1/users
    post data: { "user": { "phone": "[new_user_phone_number]" } }
GET /v1/users/[id]
POST /v1/messages
    post data: { "message": { "content": "[message_content]", "sender_id": "[number]", "receiver_id": "[number]" } }
```

**Please note:** When doing search, only exact number hit will result in successful response.
