require 'spec_helper'

describe "komps/index" do
  before(:each) do
    assign(:komps, [
      stub_model(Komp,
        :plyta => "Plyta",
        :procesor => "Procesor",
        :pamiec => "Pamiec",
        :pamiec2 => "Pamiec2",
        :karta_graf => "Karta Graf",
        :dysk => "Dysk",
        :dysk2 => "Dysk2",
        :dysk3 => "Dysk3",
        :obudowa => "Obudowa",
        :zasilacz => "Zasilacz",
        :naped => "Naped",
        :karta_muz => "Karta Muz",
        :mysz => "Mysz",
        :klawiatura => "Klawiatura"
      ),
      stub_model(Komp,
        :plyta => "Plyta",
        :procesor => "Procesor",
        :pamiec => "Pamiec",
        :pamiec2 => "Pamiec2",
        :karta_graf => "Karta Graf",
        :dysk => "Dysk",
        :dysk2 => "Dysk2",
        :dysk3 => "Dysk3",
        :obudowa => "Obudowa",
        :zasilacz => "Zasilacz",
        :naped => "Naped",
        :karta_muz => "Karta Muz",
        :mysz => "Mysz",
        :klawiatura => "Klawiatura"
      )
    ])
  end

  it "renders a list of komps" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Plyta".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Procesor".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pamiec".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pamiec2".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Karta Graf".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Dysk".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Dysk2".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Dysk3".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Obudowa".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Zasilacz".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Naped".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Karta Muz".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mysz".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Klawiatura".to_s, :count => 2
  end
end
