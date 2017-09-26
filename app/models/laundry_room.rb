class LaundryRoom < ApplicationRecord
<<<<<<< HEAD
  acts_as_bookable  time_type: :fixed,
                    capacity_type: :closed
end

@laundry_room = LaundryRoom.new
@laundry_room.schedule = IceCube::Schedule.new
# This show is available every day at 6PM and 10PM
@laundry_room.schedule.add_recurrence_rule IceCube::Rule.daily.hour_of_day(09,15)
@laundry_room.save!
=======
  acts_as_bookable  time_type: :fixed
                    #capacity_type: :closed

  before_validation :add_schedule

  def add_schedule
    self.schedule = IceCube::Schedule.new
    self.schedule.add_recurrence_rule IceCube::Rule.daily.hour_of_day(8,13)
  end
end

