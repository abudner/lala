require 'spec_helper'

describe "blas/edit" do
  before(:each) do
    @bla = assign(:bla, stub_model(Bla,
      :name => "MyString",
      :title => "MyString"
    ))
  end

  it "renders the edit bla form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => blas_path(@bla), :method => "post" do
      assert_select "input#bla_name", :name => "bla[name]"
      assert_select "input#bla_title", :name => "bla[title]"
    end
  end
end
