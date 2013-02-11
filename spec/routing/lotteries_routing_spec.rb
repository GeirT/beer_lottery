require "spec_helper"

describe LotteriesController do
  describe "routing" do

    it "routes to #index" do
      get("/lotteries").should route_to("lotteries#index")
    end

    it "routes to #new" do
      get("/lotteries/new").should route_to("lotteries#new")
    end

    it "routes to #show" do
      get("/lotteries/1").should route_to("lotteries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lotteries/1/edit").should route_to("lotteries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lotteries").should route_to("lotteries#create")
    end

    it "routes to #update" do
      put("/lotteries/1").should route_to("lotteries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lotteries/1").should route_to("lotteries#destroy", :id => "1")
    end

  end
end
