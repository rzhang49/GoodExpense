require "spec_helper"

describe PayablesController do
  describe "routing" do

    it "routes to #index" do
      get("/payables").should route_to("payables#index")
    end

    it "routes to #new" do
      get("/payables/new").should route_to("payables#new")
    end

    it "routes to #show" do
      get("/payables/1").should route_to("payables#show", :id => "1")
    end

    it "routes to #edit" do
      get("/payables/1/edit").should route_to("payables#edit", :id => "1")
    end

    it "routes to #create" do
      post("/payables").should route_to("payables#create")
    end

    it "routes to #update" do
      put("/payables/1").should route_to("payables#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/payables/1").should route_to("payables#destroy", :id => "1")
    end

  end
end
