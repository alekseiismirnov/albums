class DeleteUrlFromPictures < ActiveRecord::Migration[7.0]
  def change
    remove_column :pictures, :url, :string
  end
end
