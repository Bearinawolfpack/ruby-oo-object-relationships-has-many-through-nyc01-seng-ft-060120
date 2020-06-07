class Waiter

attr_accessor :name, :yrs_experience

@@all = []

def initialize(name, yrs_experience)
    @name = name
    @yrs_experience = yrs_experience
    @@all << self
end

def self.all
    @@all
end

def new_meal(customer, total, tip=0)
    # self refers to the waiter instance calling the waiter instance method new_meal
    Meal.new(self, customer, total, tip)
    # the order of the meal instantiate method here in the Waiter class needs to line up with the order of the instantiate method in the joiner class (class Meal)
end

def meals
  Meal.all.select do |meal_object|
    meal_object.waiter == self
  end
end

# in this Waiter instance method we will reference the array returned from the Customer instance method meals and return the customer of the meal with the highest tip.
def best_tipper
    best_tipped_meal = meals.max do |meal_a, meal_b|
      meal_a.tip <=> meal_b.tip
    end
    
    best_tipped_meal.customer
  end

end # end Waiter class