require "spec_helper"

describe AlbumOwnedsController do
  describe "routing" do

    it "routes to #index" do
      get("/album_owneds").should route_to("album_owneds#index")
    end

    it "routes to #new" do
      get("/album_owneds/new").should route_to("album_owneds#new")
    end

    it "routes to #show" do
      get("/album_owneds/1").should route_to("album_owneds#show", :id => "1")
    end

    it "routes to #edit" do
      get("/album_owneds/1/edit").should route_to("album_owneds#edit", :id => "1")
    end

    it "routes to #create" do
      post("/album_owneds").should route_to("album_owneds#create")
    end

    it "routes to #update" do
      put("/album_owneds/1").should route_to("album_owneds#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/album_owneds/1").should route_to("album_owneds#destroy", :id => "1")
    end

  end
end
