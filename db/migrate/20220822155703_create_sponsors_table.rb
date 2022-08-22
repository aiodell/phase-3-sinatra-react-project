class CreateSponsorsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :image_url
      t.string :location
      t.integer :num_of_foxes
    end
  end
end
