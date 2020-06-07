
class Customer
    # a customers name and age can be read and changed
    attr_accessor :name, :age

    # the Customer class should know every instance that gets created.
    @@all = []

    # each instance of a customer will have a name and an age.
    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    # Customer -> @@all
    def self.all
        #return every instance
        @@all
    end
    # arguments to instantiate a meal require meal initialize arguments. Customer is not needed as an argument since it is the customer instance that is calling new_meal.
    def new_meal(waiter, total, tip=0)
        # Meal instantiation requires 4 arguments, 3 of which is passed throught the instance method new_meal and the 4th, being customer, is self to represent the customer instance calling the customer instance method.
        Meal.new(waiter, self, total, tip)
    end
    # this method will iterate through the meal instances and return meals that have a customer attribute that match the customer calling the Customer instance method.
    def meals
        # each meal is a meal object
        Meal.all.select do |meal|
            # self refers to the customer instance calling the Customer instance method.
            meal.customer == self
        end
    end

    # this method will return every waiter that served a meal to the customer instance calling this Customer instance method.
    def waiters
        # we already created the Customer instance methods meals which iterates through the Meal instances to find the customer that ordered the meal.
        meals.map do |meal|
            # this will take the array returned from the Customer meals instance method and return the waiter attributes.
            meal.waiter
        end
    end
end