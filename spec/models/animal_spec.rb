require 'rails_helper'

RSpec.describe Animal, type: :model do
  it 'is not valid without a common name' do
    scully = Animal.create(
      scientific_binomial: 'Predator'
    )
    expect(scully.errors[:common_name]).to_not be_empty
  end

  it 'is not valid without a scientific_binomial' do
    scully = Animal.create(
      common_name: 'Predator'
    )
    expect(scully.errors[:scientific_binomial]).to_not be_empty
  end

  it 'does not allow duplicate common_name and scientific_binomials' do
    justin = Animal.create(
      common_name: 'dog',
      scientific_binomial: 'chicken'
    )
    scully = Animal.create(
      common_name: 'dog',
      scientific_binomial: 'mutt'
    )
    expect(scully.errors[:common_name]).to_not be_empty
  end

  it 'does not allow duplicate common_name and scientific_binomials' do
    justin = Animal.create(
      common_name: 'chicken',
      scientific_binomial: 'mutt'
    )
    scully = Animal.create(
      common_name: 'dog',
      scientific_binomial: 'mutt'
    )
    expect(scully.errors[:scientific_binomial]).to_not be_empty
  end

  

end
