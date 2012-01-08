require 'spec_helper'

describe "komps/new" do
  before(:each) do
    assign(:komp, stub_model(Komp,
      :plyta => "MyString",
      :procesor => "MyString",
      :pamiec => "MyString",
      :pamiec2 => "MyString",
      :karta_graf => "MyString",
      :dysk => "MyString",
      :dysk2 => "MyString",
      :dysk3 => "MyString",
      :obudowa => "MyString",
      :zasilacz => "MyString",
      :naped => "MyString",
      :karta_muz => "MyString",
      :mysz => "MyString",
      :klawiatura => "MyString"
    ).as_new_record)
  end

  it "renders new komp form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => komps_path, :method => "post" do
      assert_select "input#komp_plyta", :name => "komp[plyta]"
      assert_select "input#komp_procesor", :name => "komp[procesor]"
      assert_select "input#komp_pamiec", :name => "komp[pamiec]"
      assert_select "input#komp_pamiec2", :name => "komp[pamiec2]"
      assert_select "input#komp_karta_graf", :name => "komp[karta_graf]"
      assert_select "input#komp_dysk", :name => "komp[dysk]"
      assert_select "input#komp_dysk2", :name => "komp[dysk2]"
      assert_select "input#komp_dysk3", :name => "komp[dysk3]"
      assert_select "input#komp_obudowa", :name => "komp[obudowa]"
      assert_select "input#komp_zasilacz", :name => "komp[zasilacz]"
      assert_select "input#komp_naped", :name => "komp[naped]"
      assert_select "input#komp_karta_muz", :name => "komp[karta_muz]"
      assert_select "input#komp_mysz", :name => "komp[mysz]"
      assert_select "input#komp_klawiatura", :name => "komp[klawiatura]"
    end
  end
end
