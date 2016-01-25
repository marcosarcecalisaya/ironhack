
class MilkShake
  attr_reader :name, :price
  
  def initialize
    @base_price = 3
    @ingredients= [ ]
    @price=price
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end

  def price
    #Let's establish what our counter should be before we start adding ingredients into the mix
    total_price_of_milkshake = @base_price
    #Add each ingredients price to our total
    @ingredients.each do |ingredient|
      total_price_of_milkshake += ingredient.price
    end
    #return  our total price to whoever called for it
    total_price_of_milkshake
  end
end


class Ingredient
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end


class ShackShop

  attr_reader :name, :price
  
  def initialize
    @base_price = 5
    @milkshakes= [ ]
  end

  def add_milkshake(milkshake)
    @milkshakes.push(milkshake)
  end

  def checkout
    #Let's establish what our counter should be before we start adding ingredients into the mix
    total_price_order = @base_price
    #Add each ingredients price to our total
    @milkshakes.each do |milkshake|
      total_price_order += milkshake.price     
    end
    #return  our total price to whoever called for it
    total_price_order
  end
end 

nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

milkshake2=MilkShake.new
cocoa = Ingredient.new("Cocoa", 6)
pistacho = Ingredient.new("Pistacho", 7)
milkshake2.add_ingredient(cocoa)
milkshake2.add_ingredient(pistacho)


puts milkshake2.price

pedido=ShackShop.new
pedido.add_milkshake(nizars_milkshake)
pedido.add_milkshake(milkshake2)
puts pedido.checkout
