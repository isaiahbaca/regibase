class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :event
      t.string :student
      t.string :cost
      t.string :status

      t.timestamps
    end
  end
end
