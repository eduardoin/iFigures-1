class ChangeMainPictureOnPictures < ActiveRecord::Migration[5.2]
  def change
    change_column :pictures, :main_picture, :boolean, :default => false
  end
end
