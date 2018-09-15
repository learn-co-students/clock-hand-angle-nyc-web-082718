def clock_angle(time)
  time_array = time.split(":")

  hours = time_array[0].to_f
  minutes = time_array[1].to_f

  hour_angle = (hours % 12) * 30 + (minutes * 1/2)
  minute_angle = (minutes * 6)
  angle_between = (hour_angle - minute_angle) % 360
  if angle_between > 180
    clock_angle = 360-angle_between
  else
    clock_angle = angle_between
  end
  clock_angle
end
