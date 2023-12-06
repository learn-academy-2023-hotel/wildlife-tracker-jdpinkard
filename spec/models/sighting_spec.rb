require 'rails_helper'

RSpec.describe Sighting, type: :model do
  it 'is not valid without latitude' do
    scully = Sighting.create(
      longitude: 'Predator',
      date: 'Megan'
    )
    expect(scully.errors[:latitude]).to_not be_empty
  end

  it 'is not valid without longitude' do
    scully = Sighting.create(
      latitude: 'Predator',
      date: 'Megan'
    )
    expect(scully.errors[:longitude]).to_not be_empty
  end

  it 'is not valid without date' do
    scully = Sighting.create(
      latitude: 'Predator',
      longitude: 'Megan'
    )
    expect(scully.errors[:date]).to_not be_empty
  end
end
