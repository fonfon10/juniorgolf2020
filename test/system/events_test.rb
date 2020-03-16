require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test "visiting the index" do
    visit events_url
    assert_selector "h1", text: "Events"
  end

  test "creating a Event" do
    visit events_url
    click_on "New Event"

    check "Category ato" if @event.category_ato
    check "Category ban" if @event.category_ban
    check "Category jun" if @event.category_jun
    check "Category juv" if @event.category_juv
    check "Category pee" if @event.category_pee
    fill_in "Comments", with: @event.comments
    fill_in "Course", with: @event.course_id
    fill_in "Days", with: @event.days
    fill_in "End time", with: @event.end_time
    check "Father" if @event.father
    check "Gender boy" if @event.gender_boy
    check "Gender girl" if @event.gender_girl
    fill_in "Level", with: @event.level_id
    check "Mother" if @event.mother
    fill_in "Name", with: @event.name
    check "Note" if @event.note
    check "Other children" if @event.other_children
    check "Private" if @event.private
    check "Qual required" if @event.qual_required
    fill_in "Reg deadline", with: @event.reg_deadline
    fill_in "Start time", with: @event.start_time
    fill_in "Tour", with: @event.tour_id
    fill_in "User", with: @event.user_id
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "updating a Event" do
    visit events_url
    click_on "Edit", match: :first

    check "Category ato" if @event.category_ato
    check "Category ban" if @event.category_ban
    check "Category jun" if @event.category_jun
    check "Category juv" if @event.category_juv
    check "Category pee" if @event.category_pee
    fill_in "Comments", with: @event.comments
    fill_in "Course", with: @event.course_id
    fill_in "Days", with: @event.days
    fill_in "End time", with: @event.end_time
    check "Father" if @event.father
    check "Gender boy" if @event.gender_boy
    check "Gender girl" if @event.gender_girl
    fill_in "Level", with: @event.level_id
    check "Mother" if @event.mother
    fill_in "Name", with: @event.name
    check "Note" if @event.note
    check "Other children" if @event.other_children
    check "Private" if @event.private
    check "Qual required" if @event.qual_required
    fill_in "Reg deadline", with: @event.reg_deadline
    fill_in "Start time", with: @event.start_time
    fill_in "Tour", with: @event.tour_id
    fill_in "User", with: @event.user_id
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "destroying a Event" do
    visit events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event was successfully destroyed"
  end
end
