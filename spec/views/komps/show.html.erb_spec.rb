require 'spec_helper'

describe "komps/show" do
  before(:each) do
    @komp = assign(:komp, stub_model(Komp,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Plyta/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Procesor/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pamiec/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pamiec2/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Karta Graf/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Dysk/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Dysk2/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Dysk3/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Obudowa/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Zasilacz/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Naped/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Karta Muz/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mysz/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Klawiatura/)
  end
end
