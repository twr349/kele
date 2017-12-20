module Messages

    def get_messages(page = 0)
        if page > 0
           response = self.class.get("https://www.bloc.io/api/v1/message_threads?page=#{page}", headers: { "authorization" => @auth_token})
        else
           response = self.class.get("https://www.bloc.io/api/v1/message_threads", headers: { "authorization" => @auth_token })
        end
      message = JSON.parse(response.body)
     puts message
    end
    
    def create_message(sender, recipient_id, subject, stripped_text)
        response =self.class.post("https://www.bloc.io/api/v1/messages", body: { "sender" => sender, "recipient_id" => recipient_id, "subject" => subject, "stripped_text" => stripped_text }, headers: { "authorization" => @auth_token })
        if response.success?
            puts "message sent!"
        end
    end





end