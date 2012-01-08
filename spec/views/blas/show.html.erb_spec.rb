require 'spec_helper'

describe "blas/show" do
  before(:each) do
    @bla = assign(:bla, stub_model(Bla,
      :name => "Name",
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
  end
end
