class AddCostToGum < ActiveRecord::Migration[7.0]
  def change
    add_column :gums, :cost, :integer
  end
end
