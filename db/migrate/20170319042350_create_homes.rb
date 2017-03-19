class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
      t.string :index
      t.string :about
      t.string :contact

      t.timestamps
    end
  end
end
