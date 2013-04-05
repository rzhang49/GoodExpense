require "spec_helper"

describe ExpenseReportsController do
  describe "routing" do

    it "routes to #index" do
      get("/expense_reports").should route_to("expense_reports#index")
    end

    it "routes to #new" do
      get("/expense_reports/new").should route_to("expense_reports#new")
    end

    it "routes to #show" do
      get("/expense_reports/1").should route_to("expense_reports#show", :id => "1")
    end

    it "routes to #edit" do
      get("/expense_reports/1/edit").should route_to("expense_reports#edit", :id => "1")
    end

    it "routes to #create" do
      post("/expense_reports").should route_to("expense_reports#create")
    end

    it "routes to #update" do
      put("/expense_reports/1").should route_to("expense_reports#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/expense_reports/1").should route_to("expense_reports#destroy", :id => "1")
    end

  end
end
