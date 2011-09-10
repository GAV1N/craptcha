require "spec_helper"

describe CallersController do
  describe "routing" do

    it "routes to #index" do
      get("/callers").should route_to("callers#index")
    end

    it "routes to #new" do
      get("/callers/new").should route_to("callers#new")
    end

    it "routes to #show" do
      get("/callers/1").should route_to("callers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/callers/1/edit").should route_to("callers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/callers").should route_to("callers#create")
    end

    it "routes to #update" do
      put("/callers/1").should route_to("callers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/callers/1").should route_to("callers#destroy", :id => "1")
    end

  end
end
