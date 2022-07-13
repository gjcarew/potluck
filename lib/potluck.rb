require './lib/dish'

class Potluck
  attr_reader :date, :dishes

  def initialize(date, dishes = [])
    @date = date
    @dishes = dishes
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    @dishes.select do |dish|
      dish.category == category
    end
  end

  def menu
    menu_hash = Hash.new{|hash, key| hash[key] = []}
    @dishes.each do |dish|
      menu_hash[dish.category].push(dish.name)

    end
    menu_hash
  end

  def ratio(category)
    get_all_from_category(category).count.to_f / @dishes.count * 100
  end
end
