require "application_system_test_case"

class ActivitiesTest < ApplicationSystemTestCase
  setup do
    @activity = activities(:one)
  end

  test "visiting the index" do
    visit activities_url
    assert_selector "h1", text: "Activities"
  end

  test "creating a Activity" do
    visit activities_url
    click_on "New Activity"

    fill_in "Avg hr", with: @activity.avg_hr
    fill_in "Date", with: @activity.date
    fill_in "Description", with: @activity.description
    fill_in "Distance", with: @activity.distance
    fill_in "Effort", with: @activity.effort
    fill_in "Elevation", with: @activity.elevation
    fill_in "Image path", with: @activity.image_path
    fill_in "Max hr", with: @activity.max_hr
    fill_in "Title", with: @activity.title
    fill_in "User", with: @activity.user_id
    click_on "Create Activity"

    assert_text "Activity was successfully created"
    click_on "Back"
  end

  test "updating a Activity" do
    visit activities_url
    click_on "Edit", match: :first

    fill_in "Avg hr", with: @activity.avg_hr
    fill_in "Date", with: @activity.date
    fill_in "Description", with: @activity.description
    fill_in "Distance", with: @activity.distance
    fill_in "Effort", with: @activity.effort
    fill_in "Elevation", with: @activity.elevation
    fill_in "Image path", with: @activity.image_path
    fill_in "Max hr", with: @activity.max_hr
    fill_in "Title", with: @activity.title
    fill_in "User", with: @activity.user_id
    click_on "Update Activity"

    assert_text "Activity was successfully updated"
    click_on "Back"
  end

  test "destroying a Activity" do
    visit activities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Activity was successfully destroyed"
  end
end
