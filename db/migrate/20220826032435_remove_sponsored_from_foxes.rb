class RemoveSponsoredFromFoxes < ActiveRecord::Migration[6.1]
  def change
    remove_column :foxes, :sponsored
  end
end
