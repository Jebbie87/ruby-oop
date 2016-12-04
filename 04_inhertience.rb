# class Animal
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end
# end

# class Cat < Animal
# end



# class GoodDog < Animal
#   # attr_accessor :name

#   def initialize(colour)
#     super
#     @colour = colour
#   end

#   def speak
#     super + " from the GoodDog class"
#   end
# end
# sparky = GoodDog.new('Brown')
# # paws = Cat.new
# puts sparky.speak
# # # puts paws.speak

# class Animal
#   def a_public_method
#     "Will this work?" + self.a_protected_method
#   end

#   protected

#   def a_protected_method
#     "Yes, I'm protected"
#   end
# end

# fido = Animal.new
# puts fido.a_public_method
# puts fido.a_protected_method

# class Parent
#   def say_hi
#     p "Hi from the Parent."
#   end
# end

# Parent.superclass

# class Child
#   def say_hi
#     p "Hi from the child."
#   end

#   def send
#     p "Send from the child"
#   end
# end
# son = Child.new
# son.send :say_hi
# lad = Child.new
# lad.send :say_hi
# child = Child.new
# child.say_hi
 module Towable
  def can_tow?(pounds)
    pounds > 2000 ? true : false
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :model, :year
  @@number_of_vehicles = 0


  def initialize(year, model, colour)
    @year = year
    @model = model
    @colour = colour
    @@number_of_vehicles += 1
  end

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles"
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

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon"
  end

  def spray_paint(colour)
    self.colour = colour
    puts "Your car's new colour is #{self.colour}"
  end

  def age
    "Your #{self.model} is #{years_old} years old."
  end

  private

  def years_old
    Time.now.year - self.year
  end
end


class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "My car is #{self.colour}, #{self.year}, #{self.model}"
  end
end


class Truck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2

  def to_s
    "My car is #{self.colour}, #{self.year}, #{self.model}"
  end
end

camry = MyCar.new(2006, 'Camry', 'Beige')
chevy = Truck.new(1999, 'Chevy', 'Red')
# Vehicle.number_of_vehicles
puts camry.age
puts MyCar.ancestors
puts Truck.ancestors
puts Vehicle.ancestors

class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new("Joe", 90)
bob = Student.new("Bob", 84)

puts "Well Done!" if joe.better_grade_than?(bob)