
def information
	puts ("Enter your name")
	name = gets.chomp

	puts ("Enter your last name")
	last_name = gets.chomp


	puts ("Enter your age")
	age = gets.to_i

	if age < 18
		puts ("Hello #{name} #{last_name}. You are less than 18, but it's never late to start programming")
	else
		puts ("Hello #{name} #{last_name}. And what are you waiting for, it's time to do business")
	end

end

def foobar
	puts ("Enter the first number")
	first_num = gets.to_i

	puts ("Enter the second number")
	second_num = gets.to_i

	puts "Result #{calculate(first_num, second_num)}"
	
end

def calculate(a,b)
	if a == 20
		return a
	elsif b == 20
		return b
	else
		return a + b
	end
end
	
def greetings
	loop do
		puts ("================Hi this is your menu================")
	puts ("================Choose what you want to do==========
		")  
	puts ("1 = Tell about yourself")
	puts ("2 = Game with numbers ")
	puts ("0 = Output")

	input = gets.to_i
	
	case input
		when 1
			information
		when 2
			foobar
		when 0
			break
		else
			puts ("Wrong command")
		end
	end
end

greetings