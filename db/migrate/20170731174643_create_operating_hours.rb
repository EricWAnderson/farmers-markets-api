class CreateOperatingHours < ActiveRecord::Migration[5.1]
  def change
    create_table :operating_hours do |t|
      t.integer :day_of_week
      t.time :open
      t.time :close
      t.belongs_to :market, index: true

      t.timestamps
    end
  end
end
