class CreatePressures < ActiveRecord::Migration
  def change
    create_table :pressures do |t|
      t.date :date
      t.time :time
      t.string :describe
      t.integer :air_temp
      t.decimal :humid
      t.decimal :pressure_sea_level
    end
  end
end
