# class GoodDog
  # attr_accessor :name, :height, :weight

  # def initialize(name, height, weight)
  #   @name = name
  #   @height = height
  #   @weight = weight
  # end

  # def speak
  #   "#{name} says Arf!"
  # end

  # def change_info(name, height, weight)
  #   self.name = name
  #   self.height = height
  #   self.weight = weight
  # end

  # def info
  #   "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  # end

  # def some_method
  #   self.info
  # end

  # def self.what_am_i
  #   "I'm a GoodDog class"
  # end

  # @@number_of_dogs = 0

  # def initialize
  #   @@number_of_dogs += 1
  # end

  # def self.total_number_of_dogs
  #   @@number_of_dogs
  # end

#   DOG_YEARS = 7

#   attr_accessor :name, :age

#   def initialize(name, age)
#     @name = name
#     @age = age * DOG_YEARS
#   end

#   def to_s
#     "This dog's name is #{name} and it is #{age} in dog years"
#   end
# end
# sparky = GoodDog.new('Sparky', 4)
# puts sparky.age

# puts sparky



class MyCar
  attr_accessor :colour
  attr_reader :year
  def initialize(year, colour, model)
    @year = year
    @colour = colour
    @model = model
    @speed = 0
  end

  def speed_up(num)
    @speed += num
    puts "You pushed the gas and accelerate #{num} km"
  end

  def brake(num)
    @speed -= num
    puts "You pushed the brakes and slowed #{num} km"
  end

  def display_speed
    puts "You are currently going #{@speed} km"
  end

  def shut_car_off
    @speed = 0
    puts "You shut off your engine"
  end

  def spray_paint(colour)
    self.colour = colour
    puts "Your car's new colour is #{self.colour}"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon"
  end

  def to_s
    "My car is #{colour}, #{year}, #{@model}"
  end
end

# camry = MyCar.new('2006', 'Beige', 'Camry')
my_car = MyCar.new("2010", "Ford Focus", "silver")
puts my_car




