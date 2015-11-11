class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.text :prices
      t.text :sizes

      t.timestamps null: false
    end
  end
end
