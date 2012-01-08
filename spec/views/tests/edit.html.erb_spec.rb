require 'spec_helper'

describe "tests/edit" do
  before(:each) do
    @test = assign(:test, stub_model(Test,
      :name => "MyString",
      :title => "MyString",
      :cos => "MyText"
    ))
  end

  it "renders the edit test form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tests_path(@test), :method => "post" do
      assert_select "input#test_name", :name => "test[name]"
      assert_select "input#test_title", :name => "test[title]"
      assert_select "textarea#test_cos", :name => "test[cos]"
    end
  end
end
