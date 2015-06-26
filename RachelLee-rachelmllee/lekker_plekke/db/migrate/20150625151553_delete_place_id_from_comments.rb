class DeletePlaceIdFromComments < ActiveRecord::Migration
  def change
  	remove_column :comments, :place_id, :integer
  end
end
