require 'rails_helper'

RSpec.feature "can add product to cart", type: :feature, js: true do

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "and can add product to cart" do
    # ACT
    visit root_path

    
    all('button', :text => "Add").first.click
        
    # DEBUG / VERIFY
    # save_screenshot
    
    expect(page).to have_content 'My Cart (1)'
  end

end
