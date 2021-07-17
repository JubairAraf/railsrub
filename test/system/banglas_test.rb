require "application_system_test_case"

class BanglasTest < ApplicationSystemTestCase
  setup do
    @bangla = banglas(:one)
  end

  test "visiting the index" do
    visit banglas_url
    assert_selector "h1", text: "Banglas"
  end

  test "creating a Bangla" do
    visit banglas_url
    click_on "New Bangla"

    fill_in "Khawa", with: @bangla.khawa
    fill_in "Mangso", with: @bangla.mangso
    click_on "Create Bangla"

    assert_text "Bangla was successfully created"
    click_on "Back"
  end

  test "updating a Bangla" do
    visit banglas_url
    click_on "Edit", match: :first

    fill_in "Khawa", with: @bangla.khawa
    fill_in "Mangso", with: @bangla.mangso
    click_on "Update Bangla"

    assert_text "Bangla was successfully updated"
    click_on "Back"
  end

  test "destroying a Bangla" do
    visit banglas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bangla was successfully destroyed"
  end
end
