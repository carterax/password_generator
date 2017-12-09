puts 'Password length Please? ex 16, 32'
word = gets.chomp
word = word.length

#First we made a class to hold the logic of generating the passwords
class Dispatch
    def generator(word)
    	alphabet = ('a'..'z').to_a
    	numbers = (0..9).to_a
    	special_characters = ('!'..'~').to_a
    	characters = alphabet + numbers + special_characters
    	1.times { puts characters.shuffle[0..16].join }
    end
    def error_message
    	puts 'Invalid Input Word Must be more than 3 and not more than a 100'
    end
end

logic = Dispatch.new()

if word.between?(3, 100)
	logic.generator(word)
else
	logic.error_message
end

