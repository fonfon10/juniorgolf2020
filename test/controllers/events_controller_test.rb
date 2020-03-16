require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_url, params: { event: { category_ato: @event.category_ato, category_ban: @event.category_ban, category_jun: @event.category_jun, category_juv: @event.category_juv, category_pee: @event.category_pee, comments: @event.comments, course_id: @event.course_id, days: @event.days, end_time: @event.end_time, father: @event.father, gender_boy: @event.gender_boy, gender_girl: @event.gender_girl, level_id: @event.level_id, mother: @event.mother, name: @event.name, note: @event.note, other_children: @event.other_children, private: @event.private, qual_required: @event.qual_required, reg_deadline: @event.reg_deadline, start_time: @event.start_time, tour_id: @event.tour_id, user_id: @event.user_id } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { category_ato: @event.category_ato, category_ban: @event.category_ban, category_jun: @event.category_jun, category_juv: @event.category_juv, category_pee: @event.category_pee, comments: @event.comments, course_id: @event.course_id, days: @event.days, end_time: @event.end_time, father: @event.father, gender_boy: @event.gender_boy, gender_girl: @event.gender_girl, level_id: @event.level_id, mother: @event.mother, name: @event.name, note: @event.note, other_children: @event.other_children, private: @event.private, qual_required: @event.qual_required, reg_deadline: @event.reg_deadline, start_time: @event.start_time, tour_id: @event.tour_id, user_id: @event.user_id } }
    assert_redirected_to event_url(@event)
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end
