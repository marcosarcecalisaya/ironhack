class Agregado
  attr_reader :name, :price
  attr_accessor :base_price
  
  def initialize
    @base_price = 3
    @components= [ ]
    @price = price
    @name = name
  end

  def add(component)
    @components.push(component)
  end

  def price
    total= @base_price
    @components.each do |component|
      total += component.price
    end
    total
  end

end

class MilkShake < Agregado
end

class ShackShop < Agregado
end


class Ingredient
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

#MilkShake 1
nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add(banana)
nizars_milkshake.add(chocolate_chips)

#MilkShake 2
milkshake2=MilkShake.new
cocoa = Ingredient.new("Cocoa", 6)
pistacho = Ingredient.new("Pistacho", 7)
milkshake2.add(cocoa)
milkshake2.add(pistacho)

puts nizars_milkshake.price
puts milkshake2.price

#Order
order =ShackShop.new
order.add(nizars_milkshake)
order.add(milkshake2)
puts order.price
