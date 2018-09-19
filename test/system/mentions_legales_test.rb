require "application_system_test_case"

class MentionsLegalesTest < ApplicationSystemTestCase
  setup do
    @mentions_legale = mentions_legales(:one)
  end

  test "visiting the index" do
    visit mentions_legales_url
    assert_selector "h1", text: "Mentions Legales"
  end

  test "creating a Mentions legale" do
    visit mentions_legales_url
    click_on "New Mentions Legale"

    click_on "Create Mentions legale"

    assert_text "Mentions legale was successfully created"
    click_on "Back"
  end

  test "updating a Mentions legale" do
    visit mentions_legales_url
    click_on "Edit", match: :first

    click_on "Update Mentions legale"

    assert_text "Mentions legale was successfully updated"
    click_on "Back"
  end

  test "destroying a Mentions legale" do
    visit mentions_legales_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mentions legale was successfully destroyed"
  end
end
