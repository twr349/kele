require 'httparty'
require 'rubygems' 
require 'json'

class Kele
    include HTTParty
    
    #credentials = @cred
    
    def initialize(email, password)
        @cred = {query: { email: email, password: password }}
        response = self.class.post('https://www.bloc.io/api/v1/sessions', @cred)
        @auth_token = response["auth_token"]
        puts response
    end

    def get_me
        response = self.class.get('https://www.bloc.io/api/v1/users/me', headers: { "authorization" => @auth_token })
        json_parse = JSON.parse(response.body)
        puts json_parse
    end


end#end of ends