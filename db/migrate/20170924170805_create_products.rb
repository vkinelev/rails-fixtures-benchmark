class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :price
      t.string :slug

      t.timestamps
    end
  end
end
