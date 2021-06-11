def is_multiple_of_3_or_5?(n = 0)
  n < 1000
  if n % 3 == 0 or n % 5 == 0
    return true
  else return false
  end
  return n
end

def sum_of_3_or_5_multiple(final_number)
  final_sum = 0
  if final_number.instance_of? String or (final_number.instance_of? Integer and final_number < 0) or final_number.instance_of? Float
    return "Yo ! Tu nous prends pour des jambons, on est pas des entiers naturels."
  end
    for i in 0..final_number-1
    current_number = i
    if current_number %3==0 or current_number %5==0 
      final_sum = final_sum + current_number
    end
  end
  return final_sum
end