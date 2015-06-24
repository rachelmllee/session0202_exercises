class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :district
      t.string :activity
      t.boolean :visited

      t.timestamps null: false
    end
  end
end
