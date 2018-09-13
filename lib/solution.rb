def clock_angle(time)
  # time = "6:30"
  time_array = time.split(":")
  # time_array = ["6", "30"]
  hours = time_array[0].to_f
  # hours = 6
  minutes = time_array[1].to_f
  # minutes = 30
  hour_angle = (hours % 12) * 30 + (minutes * 1/2)
  # hour_angle = 195
  minute_angle = (minutes * 6)
  # minute_angle = 180
  angle_between = (hour_angle - minute_angle) % 360
  if angle_between > 180
    clock_angle = 360-angle_between
  else
    clock_angle = angle_between
  end
  clock_angle

    # code your solution here
end
