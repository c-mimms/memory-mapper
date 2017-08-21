class CreateTextMemories < ActiveRecord::Migration[5.0]
  def change
    create_table :text_memories do |t|
      t.string :title
      t.text :text
      t.datetime :date
      t.decimal :lat, precision: 10, scale: 6
      t.decimal :lon, precision: 10, scale: 6

      t.timestamps
    end
  end
end
