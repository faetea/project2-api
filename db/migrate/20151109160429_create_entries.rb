class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :day_rating
      t.integer :pain_rank
      t.string :note_entry
      t.string :symptoms
      t.string :medication
      t.integer :mood

      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end

