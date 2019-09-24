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

    it 'is not valid without a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a price' do
      subject.price = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a quantity' do
      subject.quantity = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a category' do
      subject.category = nil
      expect(subject).to_not be_valid
    end
  end

end
