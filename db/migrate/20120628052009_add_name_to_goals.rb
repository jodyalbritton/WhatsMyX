class AddNameToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :name, :string
  end
end
