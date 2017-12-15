

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
 





end