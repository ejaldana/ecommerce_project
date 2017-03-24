class AddCityToCustomer < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :city, :string
  end
end
