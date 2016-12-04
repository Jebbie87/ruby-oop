# class GoodDog
#   attr_accessor :name, :height, :weight

#   def initialize(name, height, weight)
#     @name = name
#     @height = height
#     @weight = weight
#   end

#   def speak
#     "#{name} says Arf!"
#   end

#   def change_info(name, height, weight)
#     self.name = name
#     self.height = height
#     self.weight = weight
#   end

#   def info
#     "#{self.name} weighs #{self.weight} and is #{self.height} tall."
#   end

#   def some_method
#     self.info
#   end
# end

# sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
# puts sparky.info
# sparky.change_info('Spartacus', '24 inches', '45 lbs')
# puts sparky.info
# puts sparky.some_method

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
end

camry = MyCar.new('2006', 'Beige', 'Camry')
camry.spray_paint('Red')









