class CreateJoinTablePicturesTags < ActiveRecord::Migration[7.0]
  def change
    create_join_table :pictures, :tags
  end
end
