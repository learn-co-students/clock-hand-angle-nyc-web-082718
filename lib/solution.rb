require 'pry'

def clock_angle(time)

  # 1 minute = 3 degrees
  # 1 minute for the hour hand = .5 degrees
  # figure out the number of minutes between hour hand and minute hand
  # hour hand proportionate to minute hand
  # float

  hour = time.split(":").first.to_f
  minute = time.split(":").last.to_f



  # binding.pry

  # angle of minute hand relative to 0
  minute_angle = minute * 6.0

  # angle of hour hand relative to 0
  hour_angle = hour * 30.0 + minute * 0.5


  difference = (hour_angle - minute_angle).abs
  if difference > 180.0
    (360 - difference).abs
  else
    difference.abs
  end


  # binding.pry




end

# binding.pry
