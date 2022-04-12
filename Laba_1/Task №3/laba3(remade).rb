def min(array)
  min = 100
  for item in array do
    if min > item  then
      min = item 
    end
  end
  min
end

def max(array)
  max = 0
  for item in array do
    if max < item  then
      max = item
    end
  end
  max
end

def summa(array)
  sum = 0
  for item in array do
    sum += item
  end
  sum
end

def proizvd(array)
  pr = 1
  for item in array do
    pr *= item
  end
  pr
end


def kv()
 return STDIN.gets.chomp.split().map(&:to_i)
end

def file(path)
  return File.read(path).split().map(&:to_i)
end

def main()
  if ARGV[1] == "клавиатура"
    array = kv()
  elsif ARGV[1] == "файл"
    array = file(ARGV[2])
  else
    puts "Ошибка в выборе"
  end
    

  case ARGV[0]
     when "1"
       puts min(array)
     when "2"
       puts max(array)
    when "3"
       puts summa(array)
     when "4"
       puts proizvd(array)
   else
       puts "Ошибка в выборе метода"
  end
end
main