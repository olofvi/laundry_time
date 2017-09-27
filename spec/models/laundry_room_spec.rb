RSpec.describe LaundryRoom, type: :model do
  subject {create(:laundry_room)}

  it 'has laundry room has a schedule' do
    expect(subject.schedule).to_not eq nil
  end

  it 'has laundry room has be of IceCube class  ' do
    expect(subject.schedule.class).to eq IceCube::Schedule
  end
end