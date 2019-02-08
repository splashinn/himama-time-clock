require 'test_helper'
include Warden::Test::Helpers

class ClockEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clock_event = clock_events(:one)
    @admin = users(:three)
    @teacher = users(:one)
  end

  test "user non-logined should not get index" do
    get clock_events_url
    assert_response :found
  end

  test "user logined should get index" do
    login_as @teacher
    get clock_events_url
    assert_response :success
  end

  test "admin should get new" do
    login_as @admin
    get new_clock_event_url
    assert_response :success
  end

  test "teacher get new should redirect to index" do
    login_as @teacher
    get new_clock_event_url
    assert_response :found
  end

  test "event already exists should not been created" do
    login_as @admin
    assert_no_difference('ClockEvent.count') do
      post clock_events_url, params: { clock_event: { clock_event_type_id: @clock_event.clock_event_type_id, user_id: @clock_event.user_id, clock_time:  @clock_event.clock_time} }
    end

    assert_redirected_to root_path
  end

  test "admin should get edit" do
    login_as @admin
    get edit_clock_event_url(@clock_event)
    assert_response :success
  end

  test "teacher get edit should redirect to index" do
    login_as @teacher
    get edit_clock_event_url(@clock_event)
    assert_response :found
  end

  test "admin should update clock_event" do
    login_as @admin
    patch clock_event_url(@clock_event), params: { clock_event: { clock_event_type_id: @clock_event.clock_event_type_id, user_id: @clock_event.user_id } }
    assert_redirected_to root_path
  end

  test "admin should destroy clock_event" do
    login_as @admin
    assert_difference('ClockEvent.count', -1) do
      delete clock_event_url(@clock_event)
    end

    assert_redirected_to clock_events_url
  end
end
