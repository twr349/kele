require 'httparty'
require 'rubygems' 
require 'json'

class Kele
    include HTTParty
    #format :json
    
    #@cred = credentials, email & password
    
    def initialize(email, password)
        @cred = {query: { email: email, password: password }}
        response = self.class.post('https://www.bloc.io/api/v1/sessions', @cred)
        @auth_token = response["auth_token"] #holds the authorization token
        puts response
    end

    def get_me
        response = self.class.get('https://www.bloc.io/api/v1/users/me', headers: { "authorization" => @auth_token })
        json_parse = JSON.parse(response.body)
        puts json_parse
    end
    
    def get_mentor_availability(mentor_id)
        #Henry's mentor id = 2365811 
        response = self.class.get("https://www.bloc.io/api/v1/mentors/#{mentor_id}/student_availability", headers: { "authorization" => @auth_token })
        mentor_availability = JSON.parse(response.body)
        puts mentor_availability
    end



end#end of ends