class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :title
      t.integer :rating
      t.string :slug

      t.timestamps
    end
  end
end
