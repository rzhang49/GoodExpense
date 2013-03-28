require "spec_helper"

describe DirectDepositsController do
  describe "routing" do

    it "routes to #index" do
      get("/direct_deposits").should route_to("direct_deposits#index")
    end

    it "routes to #new" do
      get("/direct_deposits/new").should route_to("direct_deposits#new")
    end

    it "routes to #show" do
      get("/direct_deposits/1").should route_to("direct_deposits#show", :id => "1")
    end

    it "routes to #edit" do
      get("/direct_deposits/1/edit").should route_to("direct_deposits#edit", :id => "1")
    end

    it "routes to #create" do
      post("/direct_deposits").should route_to("direct_deposits#create")
    end

    it "routes to #update" do
      put("/direct_deposits/1").should route_to("direct_deposits#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/direct_deposits/1").should route_to("direct_deposits#destroy", :id => "1")
    end

  end
end
