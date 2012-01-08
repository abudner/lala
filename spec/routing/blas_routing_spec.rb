require "spec_helper"

describe BlasController do
  describe "routing" do

    it "routes to #index" do
      get("/blas").should route_to("blas#index")
    end

    it "routes to #new" do
      get("/blas/new").should route_to("blas#new")
    end

    it "routes to #show" do
      get("/blas/1").should route_to("blas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/blas/1/edit").should route_to("blas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/blas").should route_to("blas#create")
    end

    it "routes to #update" do
      put("/blas/1").should route_to("blas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/blas/1").should route_to("blas#destroy", :id => "1")
    end

  end
end
