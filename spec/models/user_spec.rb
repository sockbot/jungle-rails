require 'rails_helper'

RSpec.describe User, type: :model do
  
  subject { described_class.new({email: "no@no.com", first_name: "NOT", last_name: "SURE", password: "12345678", password_confirmation: "12345678"}) }
  
  describe 'Validations' do

    it 'is valid with valid attributes' do
      expect(subject).to be_valid
      expect(subject.errors.any?).to be false
    end

    it 'is not valid without email' do
      subject.email = nil
      expect(subject).not_to be_valid
      expect(subject.errors.any?).to be true
    end

    it 'is not valid without first_name' do
      subject.first_name = nil
      expect(subject).not_to be_valid
      expect(subject.errors.any?).to be true
    end

    it 'is not valid without last_name' do
      subject.last_name = nil
      expect(subject).not_to be_valid
      expect(subject.errors.any?).to be true
    end

    it 'is not valid without password' do
      subject.password = nil
      expect(subject).not_to be_valid
      expect(subject.errors.any?).to be true
    end

    it 'is not valid without password_confirmation' do
      subject.password_confirmation = nil
      expect(subject).not_to be_valid
      expect(subject.errors.any?).to be true
    end

    it 'is not valid with password less than 8 chars' do
      subject.password = "1234567"
      expect(subject).not_to be_valid
      expect(subject.errors.any?).to be true
    end

    it 'is not valid with password_confirmation less than 8 chars' do
      subject.password_confirmation = "1234567"
      expect(subject).not_to be_valid
      expect(subject.errors.any?).to be true
    end

    # it 'is not valid when email is not unique' do
    #   expect(subject).not_to be_valid
    #   expect(subject.errors.any?).to be true
    # end

  end

end
