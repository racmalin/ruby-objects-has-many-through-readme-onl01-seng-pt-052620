class Waiter
 
  attr_accessor :name, :yrs_experience
 
  @@all = []
 
  def initialize(name, yrs_experience)
    @name = name
    @yrs_experience = yrs_experience
    @@all << self
  end
 def meals
  Meal.all.select do |meal|
    meal.customer == self
  end
end
def waiters
  meals.map do |meal|
    meal.waiter
  end
  def best_tipper
  best_tipped_meal = meals.max do |meal_a, meal_b|
    meal_a.tip <=> meal_b.tip
  end
 
  # best_tipped_meal.customer
end
  def self.all
    @@all
  end
 
end