class ChangeAgeToAString < ActiveRecord::Migration[6.1]
  def change
    change_column :foxes, :age, :string
  end
end
