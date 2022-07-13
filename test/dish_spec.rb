require './lib/dish.rb'
RSpec.describe Dish do
  it 'exists' do
    dish = Dish.new("Couscous Salad", :appetizer)
    expect(dish).to be_an_instance_of(Dish)
  end

  it 'has attributes' do
    dish = Dish.new("Couscous Salad", :appetizer)
    expect(dish.name).to eq("Couscous Salad")
    expect(dish.category).to eq(:appetizer)
  end
end
