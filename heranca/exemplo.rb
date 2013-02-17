class User
	attr_accessor :role

	def initialize
		@role = :customer
	end

	def admin?
		@role == :admin
	end
end

class Admin < User
	def initialize
		super
		@role = :admin
	end
end

lula	= Admin.new
eduardo = User.new


p lula.admin?

p eduardo.admin?