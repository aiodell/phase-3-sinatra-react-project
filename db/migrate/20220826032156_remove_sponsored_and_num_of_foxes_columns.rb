class RemoveSponsoredAndNumOfFoxesColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :sponsors, :num_of_foxes
    remove_column :sponsors, :sponsored
  end
end
