require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the flats page" do
    visit "/"
  
    assert_selector "h1", text: "Flats"
  end

  test "visiting a single apartment with id 148" do
    visit "/flats/148"

    assert_selector "h1", text: "Trendy Apt in Buttes Montmartre"
  end
end
