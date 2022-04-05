def mix(text)
    text.split("").shuffle.join
end

def palindrome(text)
    text.match?(text.reverse)
end

def streamline(text)
    text.split(" ").sort_by(&:length).join(" ")
end

def main
    puts "Какое задание?
    1) Задание 1
    2) Задание 2
    3) Задание 3 "
    my_method = gets.chomp
    puts "Текст: "
    my_text = gets.chomp

    case my_method
    when "1"
        puts mix(my_text)
    when "2"
        puts palindrome(my_text)
    when "3"
        puts streamline(my_text)
    else
        puts "Ошибка в выборе метода"
    end
end
main