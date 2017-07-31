class CreateMarkets < ActiveRecord::Migration[5.1]
  def change
    create_table :markets do |t|
      t.string :name
      t.string :description
      t.string :day
      t.string :hours

      t.timestamps
    end
  end
end
