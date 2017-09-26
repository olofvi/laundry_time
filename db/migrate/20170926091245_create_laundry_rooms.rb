class CreateLaundryRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :laundry_rooms do |t|

      t.timestamps
    end
  end
end
