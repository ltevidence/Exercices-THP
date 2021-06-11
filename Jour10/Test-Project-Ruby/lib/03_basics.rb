def number
    a = gets.chomp.to_i
    b = gets.chomp.to_i
    c = gets.chomp.to_i
    string = gets.chomp
    array = [a, b, c]
end

def who_is_bigger(a, b, c) 
    if a == nil || b == nil || c == nil
        return "nil detected"
    else 
        hash = {"a" => a.to_i, "b" => b.to_i, "c" => c.to_i}
        result = hash.key(hash.values.max)
        return "#{result} is bigger"
    end 
end

def reverse_upcase_noLTA(string)
    string.reverse.upcase.delete "LTA"
end

def array_42(array) 
    array.include?(42)
end

def magic_array(array)
    array.flatten.sort.uniq.map{|x| x*2}.delete_if{|x| x%3 == 0}
end



