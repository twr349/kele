module Roadmap
    
    def get_roadmap(roadmap_id)
        #roadmap_id =>38
        response = self.class.get("https://www.bloc.io/api/v1/roadmaps/#{roadmap_id}", headers: { "authorization" => @auth_token })
        roadmap = JSON.parse(response.body)
        puts roadmap
    end
    
    def get_checkpoint(checkpoint_id)
        response = self.class.get("https://www.bloc.io/api/v1/checkpoints/#{checkpoint_id}", headers: { "authorization" => @auth_token })
        checkpoint = JSON.parse(response.body)
        puts checkpoint
    end
    
end