require './lib/potluck.rb'

RSpec.describe Potluck do

  before :each do
    @potluck = Potluck.new("7-13-18")
  end

  it 'exists' do
    expect(@potluck).to be_an_instance_of(Potluck)
  end

  it 'has attributes' do
    expect(@potluck.date).to eq("7-13-18")
    expect(@potluck.dishes).to be_empty
  end

  it 'can add dishes' do
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    @potluck.add_dish(couscous_salad)
    @potluck.add_dish(cocktail_meatballs)
    expect(@potluck.dishes).to eq([couscous_salad, cocktail_meatballs])
    expect(@potluck.dishes.length).to eq(2)
  end
end
