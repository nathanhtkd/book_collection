# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
    subject do 
        described_class.new(title: 'harry potter', author: 'J.K. Rowling', price: 10.99, published: '1997-06-26')
    end

    it 'is valid with valid attributes' do
        expect(subject).to be_valid
    end

    it 'is not valid without a title' do
        subject.title = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid without an author' do
        subject.author = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid without a price' do
        subject.price = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid with non-numeric price' do
        subject.price = 'ten'
        expect(subject).not_to be_valid
    end

    it 'is not valid without a published date' do
        subject.published = nil
        expect(subject).not_to be_valid
    end
end
