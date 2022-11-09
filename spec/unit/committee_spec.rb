require 'rails_helper'

RSpec.describe Committee, type: :model do
  subject do
    described_class.new(committee_name: 'test committee', budget: 123.45)
  end

  it 'is valid with all valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.committee_name = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a buget' do
    subject.budget = nil
    expect(subject).not_to be_valid
  end
end