require 'spec_helper'

describe "NutrDefs" do
  describe "GET /nutr_defs" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get nutr_defs_path
      response.status.should be(200)
    end
  end
end
