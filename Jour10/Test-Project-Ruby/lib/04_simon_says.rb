def take
    echo_nb = gets.chomp.to_i
    echo = gets.chomp
    return echo
end

def echo(echo)
    return "#{echo}"
end

def shout(echo)
    echo.upcase!
end

def repeat(echo, n = gets.chomp.to_i)
    if n > 2
        return Array.new(n, echo).join(" ")
    else 
        return "#{echo} #{echo}"
    end
end
 
def start_of_word(echo, echo_nb)
    return echo[0...echo_nb]
end

def first_word(echo)
    echo.split.first
end

def titleize(echo)
    little_words = %w(end and the)
    echo.capitalize.gsub(/(\w+)/) do |word|
    little_words.include?(word) ? word : word.capitalize
    end
end