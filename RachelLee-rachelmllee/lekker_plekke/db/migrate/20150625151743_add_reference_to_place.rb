class AddReferenceToPlace < ActiveRecord::Migration
  def change
    add_reference :places, :place, index: true, foreign_key: true
  end
end
