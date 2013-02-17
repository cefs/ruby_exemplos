class Hero
	def name
		self.class.name
	end

	def fly?
		false
	end

	def heat_vision?
		false
	end

	def super_power?
		false
	end

	def money?
		false
	end

end

module Flying
	def fly
		"I'm now flying"
	end

	def fly?
		true
	end
end

module SuperPower
	def super_power
		"I have super power!"
	end

	def super_power?
		true
	end
end

module HeatVision
	def heat_vision
		"I'm melting you down"
	end

	def heat_vision?
		true
	end
end

module Money
	def money
		"I have money!"
	end

	def money?
		true
	end
end

class SuperMan < Hero
	include Flying
	include SuperPower
	include HeatVision
end

class SpiderMan < Hero
	include SuperPower	
end

class BatMan < Hero
	include Money
end

def inspect_hero(hero)
	puts "=== #{hero.name}"
	puts "    fly?  	   #{hero.fly?}"
	puts "    super_power? #{hero.super_power?}"
	puts "    heat_vision? #{hero.heat_vision?}"
	puts "	  money?	   #{hero.money?}"
end


inspect_hero SuperMan.new
inspect_hero SpiderMan.new
inspect_hero BatMan.new

