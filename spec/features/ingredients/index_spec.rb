require "rails_helper"

RSpec.describe "the ingredient index" do
  it "shows a list of all ingredients including their name and cost" do
    Ingredient.create!(name: "Tomatoes", cost: 4)
    Ingredient.create!(name: "Spaghetti", cost: 5)
    Ingredient.create!(name: "Mushrooms", cost: 3)
    Ingredient.create!(name: "Ground Beef", cost: 10)
    Ingredient.create!(name: "Basil", cost: 1)
    
    visit "/ingredients"

    expect(page).to have_content("Tomatoes: 4")
    expect(page).to have_content("Spaghetti: 5")
    expect(page).to have_content("Mushrooms: 3")
    expect(page).to have_content("Ground Beef: 10")
    expect(page).to have_content("Basil: 1")
  end
end