class CreateFoxesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :foxes do |t|
      t.string :name
      t.integer :age
      t.string :favorite_toy
      t.string :personality
      t.string :image_url
      t.boolean :sponsored
      t.integer :sponsor_id
    end
  end
end
