class AddReferenceUserToPictures < ActiveRecord::Migration[7.0]
  def change
    add_reference :pictures, :user
  end
end
