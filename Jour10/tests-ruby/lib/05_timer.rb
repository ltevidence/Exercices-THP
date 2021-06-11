def time_string(timer = gets.chomp.to_i)
    Time.at(timer).utc.strftime("%H:%M:%S")
end
