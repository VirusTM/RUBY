def one(array)

if array[0]== array[-1]
  (array.uniq- array[0..0])[0]
elsif array[0]== array[1]
  array[-1]
else
  array[0]
end
end


def two(array)
 puts array.min 
(array - [array.min]).min
end


R=5.2
def free(array)
array.sort_by{ |i| (i-R).abs }[0]
end

def mod(arr)
  n_arr = arr.map{|i| i.abs}
  n_arr.sum/n_arr.length
end

def less_max(arr)
  arr = arr.select{|i| i > arr.sum/arr.length && i < arr.max}
end



def main

  puts "Выбор задания
      1) 1 задание
      2) 2 задание
      3) 3 задание
      4) 4 задание
      5) 5 задание "
      my_method = gets.chomp
  

    puts "Откуда взять массив?
    1) Ввод с клавиатуры
    2) Выбор из файла"
    my_option = gets.chomp

    my_arr = Array.new

    case my_option
    when "1"
      puts "Пишете массив через пробел"
        my_arr = gets.chomp.split.map(&:to_i)
    when "2"
        puts "Нужен адрес файла" 
        my_address = gets.chomp
        my_str = IO.read(my_address) # C:\Users\VirusTM\Desktop\Task №4\input.txt
        my_arr = my_str.split.map(&:to_i)
    else
        puts "Ошибка в выборе источника массива"
    end

    case my_method
    when "1"
      puts one(my_arr)
    when "2"
      puts two(my_arr)
    when "3"
      puts (my_arr)
    when "4"
      puts mod(my_arr)
    when "5"
      puts less_max(my_arr)
  
  else
      puts "Ошибка в выборе метода"
  end
end
main
   