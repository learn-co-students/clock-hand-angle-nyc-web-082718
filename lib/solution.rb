def clock_angle(time)
    # time is Str "HH:MM" => parse
    h = time.split(":")[0].to_i
    m = time.split(":")[1].to_i

    hangle = h * 30
    mangle = m * 6

    hoffset = (m / 60.0) * 30

    hrangle = hangle + hoffset
    ans = (hrangle - mangle).abs
    ans == 360 ? 0 : ans > 180 ? 360 - ans : ans
end


# Each hr = 30 deg
# Each min = 6 deg

# get angle hr hand
# get angle min hand
# get mins % out of 60 => * 30 deg, add to hr hand
# get diff
