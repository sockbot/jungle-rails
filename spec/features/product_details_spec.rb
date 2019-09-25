require 'rails_helper'

RSpec.feature "can click on Product details", type: :feature, js: true do

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

  scenario "and can see product details" do
    # ACT
    visit root_path

    
    
    all('a', :text => "Details").first.click
    
    sleep 5
    
    # DEBUG / VERIFY
    # save_screenshot

    expect(page).to have_css 'section.products-show'
  end

end
