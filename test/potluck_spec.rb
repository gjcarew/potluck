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

  it "can get all dishes from a category" do

    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entre)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    candy_salad = Dish.new("Candy Salad", :dessert)
    @potluck.add_dish(couscous_salad)
    @potluck.add_dish(summer_pizza)
    @potluck.add_dish(roast_pork)
    @potluck.add_dish(cocktail_meatballs)
    @potluck.add_dish(candy_salad)

    expect(@potluck.get_all_from_category(:appetizer)).to eq(
      [couscous_salad, summer_pizza])
    expect(@potluck.get_all_from_category(:appetizer).first).to be(couscous_salad)
    expect(@potluck.get_all_from_category(:appetizer).first.name).to eq("Couscous Salad")
  end
end
