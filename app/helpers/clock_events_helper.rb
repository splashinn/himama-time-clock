module ClockEventsHelper
  def greeting time
    current_time = time.to_i
    midnight = time.beginning_of_day.to_i
    noon = time.middle_of_day.to_i
    five_pm = time.change(:hour => 17 ).to_i
    eight_pm = time.change(:hour => 20 ).to_i

    case
    when midnight.upto(noon).include?(current_time)
      "Good morning"
    when noon.upto(five_pm).include?(current_time)
      "Good afternoon"
    when five_pm.upto(eight_pm).include?(current_time)
      "Good evening"
    when eight_pm.upto(midnight + 1.day).include?(current_time)
      "Good night"
    end
  end
end
