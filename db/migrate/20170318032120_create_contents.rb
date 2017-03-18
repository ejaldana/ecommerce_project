class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.string :about
      t.string :contact

      t.timestamps
    end
  end
end
