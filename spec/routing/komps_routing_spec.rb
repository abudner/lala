require "spec_helper"

describe KompsController do
  describe "routing" do

    it "routes to #index" do
      get("/komps").should route_to("komps#index")
    end

    it "routes to #new" do
      get("/komps/new").should route_to("komps#new")
    end

    it "routes to #show" do
      get("/komps/1").should route_to("komps#show", :id => "1")
    end

    it "routes to #edit" do
      get("/komps/1/edit").should route_to("komps#edit", :id => "1")
    end

    it "routes to #create" do
      post("/komps").should route_to("komps#create")
    end

    it "routes to #update" do
      put("/komps/1").should route_to("komps#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/komps/1").should route_to("komps#destroy", :id => "1")
    end

  end
end
