class CreatePressures < ActiveRecord::Migration
  def change
    create_table :pressures do |t|
      t.integer :value
      t.string :unit

      t.timestamps null: false
    end
  end
end
