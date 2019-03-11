class ChangeMainPictureToMainPhoto < ActiveRecord::Migration[5.2]
  def change
    rename_column :pictures, :main_picture, :main_photo
  end
end
