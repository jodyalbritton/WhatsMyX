require 'spec_helper'

describe "gcategories/show" do
  before(:each) do
    @gcategory = assign(:gcategory, stub_model(Gcategory,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
