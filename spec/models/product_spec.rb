require 'rails_helper'

RSpec.describe Product, type: :model do
  
  subject { described_class.new }
  
  describe 'Validations' do
    it 'is valid with valid attributes' do
      @category = Category.new
      subject.name = "NOT SURE"
      subject.price = 1234
      subject.quantity = 3838
      subject.category = @category
      expect(subject).to be_valid
      expect(subject.errors.any?).to be false
    end
    
    it 'is not valid without a name' do
      @category = Category.new
      subject.name = nil
      subject.price = 1234
      subject.quantity = 3838
      subject.category = @category
      expect(subject).to_not be_valid
      expect(subject.errors.any?).to be true
    end

    it 'is not valid without a price' do
      @category = Category.new
      subject.name = "NOT SURE"
      subject.price = nil
      subject.quantity = 3838
      subject.category = @category
      expect(subject).to_not be_valid
      expect(subject.errors.any?).to be true
    end
    
    it 'is not valid without a quantity' do
      @category = Category.new
      subject.name = "NOT SURE"
      subject.price = 1234
      subject.quantity = nil
      subject.category = @category
      expect(subject).to_not be_valid
      expect(subject.errors.any?).to be true
    end
    
    it 'is not valid without a category' do
      subject.name = "NOT SURE"
      subject.price = 1234
      subject.quantity = 3838
      subject.category = nil
      expect(subject).to_not be_valid
      expect(subject.errors.any?).to be true
    end
  end

end
