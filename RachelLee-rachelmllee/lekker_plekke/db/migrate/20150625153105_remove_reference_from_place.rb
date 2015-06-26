class RemoveReferenceFromPlace < ActiveRecord::Migration
  def change
  	remove_reference :places, :place
  end
end
