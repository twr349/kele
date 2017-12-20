module Submissions
    #enrollment_id => 31512
    
    def create_submission(checkpoint_id, assignment_branch, assignment_commit_link, comment, enrollment_id)
        response =self.class.post("https://www.bloc.io/api/v1/checkpoint_submissions", 
        body: { "checkpoint_id" => checkpoint_id, "assignment_branch" => assignment_branch, "assignment_commit_link" => assignment_commit_link, "comment" => comment, "enrollment_id" => enrollment_id }, 
        headers: { "authorization" => @auth_token })
        if response.success?
            puts "submission sent!"
        end
    end
    
end