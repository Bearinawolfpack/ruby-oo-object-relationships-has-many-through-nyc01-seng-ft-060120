require 'pry'

require_relative '/Users/bearinawolfpack/Documents/FlatIron/SE/Development/code/Mod1/has_many_through/lib/customer.rb'
require_relative '/Users/bearinawolfpack/Documents/FlatIron/SE/Development/code/Mod1/has_many_through/lib/meal.rb'
require_relative '/Users/bearinawolfpack/Documents/FlatIron/SE/Development/code/Mod1/has_many_through/lib/waiter.rb'

# sam      = Customer.new("Sam", 27)
# alex     = Customer.new("Alex", 30)
# rachel   = Customer.new("Rachel", 27)
# terrance = Customer.new("Terrance", 27)

# jason  = Waiter.new("Jason", 4)
# andrew = Waiter.new("Andrew", 7)
# yomi   = Waiter.new("Yomi", 10)
# pat    = Waiter.new("Pat", 2)
# corey  = Waiter.new("Corey", 5)
# dan    = Waiter.new("Dan", 3)

# rachel.new_meal(dan, 50, 10)
# alex.new_meal(dan, 30, 5)
# terrance.new_meal(jason, 50, 6)
# terrance.new_meal(andrew, 60, 8)
# terrance.new_meal(yomi, 30, 4)
# sam.new_meal(pat, 50, 10) 
# sam.new_meal(alex, 20, 3) 
# pat.new_meal(sam, 30, 5) 

jason = Waiter.new("Jason", 4)
lisa = Customer.new("Lisa", 24)
tim = Customer.new("Tim", 35)
terrance = Customer.new("Terrance", 27)

terrance.new_meal(jason, 50, 3)
lisa.new_meal(jason, 40, 10)
tim.new_meal(jason, 45, 8)

binding.pry