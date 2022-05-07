class CreateGums < ActiveRecord::Migration[7.0]
  def change
    create_table :gums do |t|
      t.string :name
      t.string :flavor

      t.timestamps
    end
  end
end
