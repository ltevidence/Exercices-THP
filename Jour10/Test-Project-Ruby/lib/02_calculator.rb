def number_chosen
    first = gets.chomp.to_i
    second = gets.chomp.to_i
    array = []
    arrays = array.push(gets.chomp.to_i)
end

def add(first, second)
    addition = (first + second)
    return addition
end

def subtract(first, second)
    subtraction = (first - second)
    return subtraction
end

def sum(arrays)
    sums = arrays.inject(0, :+)
    return sums
end

def multiply(first, second)
    multiplication = (first * second)
    return multiplication
end

def power(first, second)
    power_sum = first ** second
    return power_sum
end

def factorial(first)
    factor = (1..first).inject(:*) || 1
    return factor
end