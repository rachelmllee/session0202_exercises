class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.string :text
      t.integer :place_id

      t.timestamps null: false
    end
  end
end
