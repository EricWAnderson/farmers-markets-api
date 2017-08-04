class AddUrlToMarkets < ActiveRecord::Migration[5.1]
  def change
    add_column :markets, :url, :string
    add_column :markets, :email, :string
    add_column :markets, :phone, :string
    add_column :markets, :ebt, :boolean
  end
end
