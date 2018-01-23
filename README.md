# Kele
Kele is a Ruby Gem API client to access the Bloc API.



## Usage
**The client can be used as follows, (Populated with your Bloc.io email and password to access the API. 
):**

```ruby
$ irb
>> require './lib/kele'
=> true
>> Kele.new("user@gmail.com", "abc123")
```
**To retrieve a parsed ruby hash of your Bloc.io account information then run:** 

```ruby
$ kele_client.get_me
```

**To retrieve your mentor's current availability:**

```ruby
$ kele_client.get_mentor_availability(mentor_id)
```
**To retrieve your Bloc.io roadmap:** 

```ruby
$ kele_client.get_roadmap(roadmap_id)
```

**To retrieve information on a particular checkpoint:** 
```ruby
$ kele_client.get_checkpoint(checkpoint_id)
```
**To retrieve your messages:**

```ruby
$ kele_client.get_messages(1) # returns the first page of message threads
$ kele_client.get_messages # returns all message threads
```

**To send a message:** 

```ruby
$ kele.client.create_message(sender_email, recipient_id, stripped_text, subject )
```

**To submit a checkpoint:**
```angular2html
$ kele_client.create_submission(checkpoint_id, assignment_branch, assignment_commit_link, comment)
```

**To update a checkpoint**
```angular2html
$ kele_client.update_submission(checkpoint_id, assignment_branch, assignment_commit_link, comment)
```


