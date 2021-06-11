def temperature
    temp = gets.chomp.to_f
end
def ftoc(temperature)
    celsius = ((temperature - 32) * 5 / 9)
    return celsius
end

def ctof(temperature)
    fahrenheit = (temperature * 1.8 + 32)
    return fahrenheit
end

