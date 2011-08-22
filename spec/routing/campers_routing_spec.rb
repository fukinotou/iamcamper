require "spec_helper"

describe CampersController do
  describe "routing" do

    it "routes to #index" do
      get("/campers").should route_to("campers#index")
    end

    it "routes to #new" do
      get("/campers/new").should route_to("campers#new")
    end

    it "routes to #show" do
      get("/campers/1").should route_to("campers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/campers/1/edit").should route_to("campers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/campers").should route_to("campers#create")
    end

    it "routes to #update" do
      put("/campers/1").should route_to("campers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/campers/1").should route_to("campers#destroy", :id => "1")
    end

  end
end
