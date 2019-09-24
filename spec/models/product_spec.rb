require 'rails_helper'

RSpec.describe Product, type: :model do
  
  subject { described_class.new }

  describe 'Validations' do
    it 'is valid with valid attributes' do
      subject.name = "NOT SURE"
      subject.price = 1234
      subject.quantity = 3838
      subject.category = Category.new
      expect(subject).to be_valid
    end
    # it 'is not valid without a name'
    # it 'is not valid without a price'
    # it 'is not valid without a quantity'
    # it 'is not valid without a category'
    # validates :name, presence: true
    # validates :price, presence: true
    # validates :quantity, presence: true
    # validates :category, presence: true
  end

end
