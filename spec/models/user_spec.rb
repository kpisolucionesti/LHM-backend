require 'rails_helper'

RSpec.describe User, type: :model do
  it 'returns the firstName for a user' do
    user = User.new(firstName: 'John')
    expect(user.firstName).to eq('John')
  end
end
