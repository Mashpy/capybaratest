require "rails_helper"

RSpec.describe TasklistsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tasklists").to route_to("tasklists#index")
    end

    it "routes to #new" do
      expect(:get => "/tasklists/new").to route_to("tasklists#new")
    end

    it "routes to #show" do
      expect(:get => "/tasklists/1").to route_to("tasklists#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tasklists/1/edit").to route_to("tasklists#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tasklists").to route_to("tasklists#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tasklists/1").to route_to("tasklists#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tasklists/1").to route_to("tasklists#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tasklists/1").to route_to("tasklists#destroy", :id => "1")
    end

  end
end
