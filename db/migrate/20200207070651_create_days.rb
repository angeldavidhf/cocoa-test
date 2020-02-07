class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.integer :schedule_id
      t.string :name
      t.time :time_at
      t.text :description

      t.timestamps
    end

    add_foreign_key :days, 
                    :schedules, 
                    column: :schedule_id
    add_index :days, :schedule_id
  end
end
