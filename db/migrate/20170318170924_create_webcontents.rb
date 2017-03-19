class CreateWebcontents < ActiveRecord::Migration[5.0]
  def change
    create_table :webcontents do |t|
      t.text :about
      t.text :contact

      t.timestamps
    end
  end
end
