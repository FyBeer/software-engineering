
def putData
	puts "Enter word"
	word = gets.chomp
	
	words = word.split(' ')[1]
	if words[-2..-1].upcase == "CS"
		puts 2**words.length
	 else
		puts words.reverse
	 end
 end


def constructor
	pocemons = []
	puts ("Enter how much pokemon")
	
	number = gets.to_i
	number.times do
		puts ("Pocemon name")
		name = gets.chomp
		puts ("Color")
		color = gets.chomp
		pocemons << {'name': name, 'color': color}
	end
	puts ("Your pokemon")
	puts pocemons
end

	
def greetings
	loop do
		puts ("================Hi this is your menu================")
		puts ("================Choose what you want to do==========
			")  
		puts ("1 = Game")
		puts ("2 = Create Pokemons ")
		puts ("0 = Output")

		input = gets.to_i
	
		case input
			when 1
				putData
			when 2
				constructor
			when 0
				break
			else
				puts ("Wrong command")
		end
	end
end

greetings