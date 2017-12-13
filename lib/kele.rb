require 'httparty'
#require 'rubygems'

class Kele
    include HTTParty
    
    
    def initialize(email, password)
        @auth = {query: { email: email, password: password }}
        puts self.class.post('https://www.bloc.io/api/v1/sessions', @auth)
    
    end



end#end of ends