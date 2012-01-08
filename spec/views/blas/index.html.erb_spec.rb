require 'spec_helper'

describe "blas/index" do
  before(:each) do
    assign(:blas, [
      stub_model(Bla,
        :name => "Name",
        :title => "Title"
      ),
      stub_model(Bla,
        :name => "Name",
        :title => "Title"
      )
    ])
  end

  it "renders a list of blas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
