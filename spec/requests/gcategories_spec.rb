require 'spec_helper'

describe "Gcategories" do
  describe "GET /gcategories" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get gcategories_path
      response.status.should be(200)
    end
  end
end
