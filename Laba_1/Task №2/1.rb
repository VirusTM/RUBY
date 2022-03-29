i = ARGV[0].to_i
summa = 0
while i > 0
  summa += i%10
  i/=10
end
puts "Сумма цифр числа  = #{summa}"