module ClockEventsHelper
  def greeting
    current_time = Time.now.to_i
    midnight = Time.now.beginning_of_day.to_i
    noon = Time.now.middle_of_day.to_i
    five_pm = Time.now.change(:hour => 17 ).to_i
    eight_pm = Time.now.change(:hour => 20 ).to_i

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
