class AddPostalcodeToCustomer < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :postalcode, :string
  end
end
