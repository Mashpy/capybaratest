require 'rails_helper'

RSpec.describe "Tasklists", type: :request do
  describe "GET /tasklists" do
    it "Task will work" do
        Tasklist.create!(:name => "paint fence")  
      get tasklists_path
      response.body.should include("paint fence")  
    end
  end
  
  describe "POST /tasklists" do  
    it "creates a task" do  
      post_via_redirect tasklists_path,
       :tasklist => { :name => "paint fence" }  
      response.body.should include("paint fence")  
    end  
  end
end
