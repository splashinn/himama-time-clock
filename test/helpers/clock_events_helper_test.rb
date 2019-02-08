require 'test_helper'

class ClockEventsHelperTest < ActionView::TestCase
  setup do
    @time = Time.zone.now
  end

  test "should return good morning" do
    #12am - 12pm: morning
    morning = @time.beginning_of_day + 4.hours
    assert_dom_equal "Good morning", greeting(morning)
  end

  test "should return good afternoon" do
    #12pm - 5pm: afternoon
    afternoon = @time.beginning_of_day + 13.hours
    assert_dom_equal "Good afternoon", greeting(afternoon)
  end

  test "should return good evening" do
    #5pm - 8pm: evening
    evening = @time.beginning_of_day + 18.hours
    assert_dom_equal "Good evening", greeting(evening)
  end

  test "should return good night" do
    #8pm - 12am + 1: night
    night = @time.beginning_of_day + 22.hours
    assert_dom_equal "Good night", greeting(night)
  end
end
