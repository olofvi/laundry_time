require 'rails_helper'

RSpec.describe LaundryRoom, type: :model do

  before do
    @laundry_room = LaundryRoom.create
  end

  it 'has laundry room attributes' do
    expect(@laundry_room).to have_attributes(time_type: :fixed, capacity_type: :closed)
  end
end