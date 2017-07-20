require 'pry'

class Person

	attr_reader :name, :happiness, :hygiene
	attr_accessor :bank_account

	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end

	def happiness=(number)
		@happiness = number
		if number > 10
			@happiness = 10
		elsif number < 0 
			@happiness = 0
		end
	end

	def hygiene=(number)
		@hygiene = number
		if number > 10
			@hygiene = 10
		elsif number < 0
			@hygiene = 0
		end
	end

	def happy?
		self.happiness > 7
	end

	def clean?
		self.hygiene > 7
	end

	def get_paid(salary)
		@bank_account += salary
		if salary >= 100
			return "all about the benjamins"
		end
		@bank_account
	end

	def take_bath
		self.hygiene += 4
		"♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		self.hygiene -= 3
		self.happiness += 2
		"♪ another one bites the dust ♫"
	end

	def call_friend(friend_name)
		self.happiness += 3
		friend_name.happiness += 3
		"Hi #{friend_name.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(person, topic)
		if topic == "politics"
			self.happiness -= 2
			person.happiness -= 2
			"blah blah partisan blah lobbyist"
		elsif topic == "weather"
			self.happiness += 1
			person.happiness += 1
			"blah blah sun blah rain"
		else
			"blah blah blah blah blah"
		end
	end
end