require "application_system_test_case"

class ReflectionsTest < ApplicationSystemTestCase
  setup do
    @reflection = reflections(:one)
  end

  test "visiting the index" do
    visit reflections_url
    assert_selector "h1", text: "Reflections"
  end

  test "creating a Reflection" do
    visit reflections_url
    click_on "New Reflection"

    fill_in "Biggergoal", with: @reflection.biggergoal
    fill_in "Goal", with: @reflection.goal
    fill_in "Overall", with: @reflection.overall
    fill_in "Plan", with: @reflection.plan
    fill_in "Result", with: @reflection.result
    fill_in "Topic", with: @reflection.topic
    click_on "Create Reflection"

    assert_text "Reflection was successfully created"
    click_on "Back"
  end

  test "updating a Reflection" do
    visit reflections_url
    click_on "Edit", match: :first

    fill_in "Biggergoal", with: @reflection.biggergoal
    fill_in "Goal", with: @reflection.goal
    fill_in "Overall", with: @reflection.overall
    fill_in "Plan", with: @reflection.plan
    fill_in "Result", with: @reflection.result
    fill_in "Topic", with: @reflection.topic
    click_on "Update Reflection"

    assert_text "Reflection was successfully updated"
    click_on "Back"
  end

  test "destroying a Reflection" do
    visit reflections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reflection was successfully destroyed"
  end
end
