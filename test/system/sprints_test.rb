require "application_system_test_case"

class SprintsTest < ApplicationSystemTestCase
  setup do
    @sprint = sprints(:one)
  end

  test "visiting the index" do
    visit sprints_url
    assert_selector "h1", text: "Sprints"
  end

  test "should create sprint" do
    visit sprints_url
    click_on "New sprint"

    fill_in "Bpm", with: @sprint.bpm
    fill_in "Jogging", with: @sprint.jogging
    fill_in "Name", with: @sprint.name
    fill_in "Sittingbpm", with: @sprint.sittingbpm
    fill_in "Sprintingbpm", with: @sprint.sprintingbpm
    check "Warmup" if @sprint.warmup
    click_on "Create Sprint"

    assert_text "Sprint was successfully created"
    click_on "Back"
  end

  test "should update Sprint" do
    visit sprint_url(@sprint)
    click_on "Edit this sprint", match: :first

    fill_in "Bpm", with: @sprint.bpm
    fill_in "Jogging", with: @sprint.jogging
    fill_in "Name", with: @sprint.name
    fill_in "Sittingbpm", with: @sprint.sittingbpm
    fill_in "Sprintingbpm", with: @sprint.sprintingbpm
    check "Warmup" if @sprint.warmup
    click_on "Update Sprint"

    assert_text "Sprint was successfully updated"
    click_on "Back"
  end

  test "should destroy Sprint" do
    visit sprint_url(@sprint)
    click_on "Destroy this sprint", match: :first

    assert_text "Sprint was successfully destroyed"
  end
end
