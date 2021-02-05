require "application_system_test_case"

class SampleUsersTest < ApplicationSystemTestCase
  setup do
    @sample_user = sample_users(:one)
  end

  test "visiting the index" do
    visit sample_users_url
    assert_selector "h1", text: "Sample Users"
  end

  test "creating a Sample user" do
    visit sample_users_url
    click_on "New Sample User"

    fill_in "Age", with: @sample_user.age
    fill_in "Name", with: @sample_user.name
    click_on "Create Sample user"

    assert_text "Sample user was successfully created"
    click_on "Back"
  end

  test "updating a Sample user" do
    visit sample_users_url
    click_on "Edit", match: :first

    fill_in "Age", with: @sample_user.age
    fill_in "Name", with: @sample_user.name
    click_on "Update Sample user"

    assert_text "Sample user was successfully updated"
    click_on "Back"
  end

  test "destroying a Sample user" do
    visit sample_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sample user was successfully destroyed"
  end
end
