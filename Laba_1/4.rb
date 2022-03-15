puts "Здравствуй , #{ARGV[0]}!"

puts "#{ARGV[0]} , какой твой любимый язык?"
answer = STDIN.gets.chomp
if ["ruby",].include? answer
	puts "подлиза!"
else
	puts "скоро будет ruby!"
end

langprog = gets.chomp
case langprog
	when "С#"
  puts "весело"
when "C++"
  puts "воу"
  end

puts "Ruby или OC"
my_chose = STDIN.gets.chomp
case my_chose
when "Ruby"
  puts system "#{STDIN.gets.chomp}"
when "OC"
  puts system "#{STDIN.gets.chomp}"
else
  puts "ОШИБКА!!!"
end