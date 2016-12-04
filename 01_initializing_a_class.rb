
module Speak
  def speak(sound)
    puts "#{sound}"
  end
end


class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

# sparky = GoodDog.new
puts GoodDog.ancestors

# bob = HumanBeing.new
puts HumanBeing.ancestors