def summa(x)
	i = 10
	sum = 0
	while x > 0
		sum += x % i
		x /= i
	end
	sum
end

def max(x)
	max = 0
	i = 10
	while x > 0
		s = x % i
		if max < s then
			max = s
		end
		x /= i
	end
	max
end

def min(x)
	min = 9
	i = 10
	while x > 0
		s = x % i
		if min > s then
			min = s
		end
		x /= i
	end
	min
end

def proizvd(x)
	i = 10
	pr = 1
	while x > 0
		pr *= x % i
		x /= i
	end
	pr
end

def delno3(x)
    a = 0
    (1 ... x).each do |i|
        if x % i == 0 && i % 3 != 0
            a += 1
        end
    end
    a
end

def evennomin(x)
    x.digits.sort.each do |i|
        unless i.even?
            return i
        end
    end
end

def seven(x)
    sum = sumdel(x)
    pr = prch(x)
    a = 0
    (1 ... x).each do |i|
        if x % i == 0 && i.gcd(sum) != 1 && i.gcd(pr) == 1
            a += i
        end
    end
    a
end



def main(x,y)
	case y
	when 1
  		puts summa(x)
	when 2
  		puts max(x)
	when 3
  		puts min(x)
	when 4
  		puts proizvd(x)
	when 5
		puts delno3(x)
	when 6
		puts evennomin(x)
	when 7
		puts seven(x)
	else
		puts "Hello world"
	end	
end

puts "Число :> #{ARGV[0]}"
x = ARGV[0].to_i
y = ARGV[1].to_i
main(x,y)