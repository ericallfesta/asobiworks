require "rails_helper"

RSpec.describe CliantsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cliants").to route_to("cliants#index")
    end

    it "routes to #new" do
      expect(:get => "/cliants/new").to route_to("cliants#new")
    end

    it "routes to #show" do
      expect(:get => "/cliants/1").to route_to("cliants#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cliants/1/edit").to route_to("cliants#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/cliants").to route_to("cliants#create")
    end

    it "routes to #update" do
      expect(:put => "/cliants/1").to route_to("cliants#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cliants/1").to route_to("cliants#destroy", :id => "1")
    end

  end
end
