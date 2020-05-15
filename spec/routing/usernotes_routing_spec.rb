require "rails_helper"

RSpec.describe UsernotesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/usernotes").to route_to("usernotes#index")
    end


    it "routes to #show" do
      expect(:get => "/usernotes/1").to route_to("usernotes#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/usernotes").to route_to("usernotes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/usernotes/1").to route_to("usernotes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/usernotes/1").to route_to("usernotes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/usernotes/1").to route_to("usernotes#destroy", :id => "1")
    end

  end
end
