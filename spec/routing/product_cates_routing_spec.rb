require "spec_helper"

describe ProductCatesController do
  describe "routing" do

    it "routes to #index" do
      get("/product_cates").should route_to("product_cates#index")
    end

    it "routes to #new" do
      get("/product_cates/new").should route_to("product_cates#new")
    end

    it "routes to #show" do
      get("/product_cates/1").should route_to("product_cates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/product_cates/1/edit").should route_to("product_cates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/product_cates").should route_to("product_cates#create")
    end

    it "routes to #update" do
      put("/product_cates/1").should route_to("product_cates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/product_cates/1").should route_to("product_cates#destroy", :id => "1")
    end

  end
end
